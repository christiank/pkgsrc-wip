$NetBSD$

--- gdb/sh-nbsd-tdep.c.orig	2019-07-16 00:00:27.000000000 +0000
+++ gdb/sh-nbsd-tdep.c
@@ -21,17 +21,26 @@
 
 #include "defs.h"
 #include "gdbcore.h"
+#include "inferior.h"
+#include "regcache.h"
 #include "regset.h"
 #include "value.h"
 #include "osabi.h"
 
-#include "sh-tdep.h"
+#include "trad-frame.h"
+#include "tramp-frame.h"
+
+#include "common/gdb_assert.h"
 #include "solib-svr4.h"
+#include "sh-tdep.h"
+#include "sh-nbsd-tdep.h"
+#include "nbsd-tdep.h"
+
 #include "gdbarch.h"
 
 /* Convert a register number into an offset into a ptrace
    register structure.  */
-static const struct sh_corefile_regmap regmap[] =
+static const struct sh_corefile_regmap gregs_table[] =
 {
   {R0_REGNUM,      20 * 4},
   {R0_REGNUM + 1,  19 * 4},
@@ -54,9 +63,136 @@ static const struct sh_corefile_regmap r
   {PR_REGNUM,	    2 * 4},
   {MACH_REGNUM,	    3 * 4},
   {MACL_REGNUM,	    4 * 4},
+  {GBR_REGNUM,	   21 * 4},
   {-1 /* Terminator.  */, 0}
 };
+
+
+#define REGSx16(base) \
+  {(base),      0}, \
+  {(base) +  1, 4}, \
+  {(base) +  2, 8}, \
+  {(base) +  3, 12}, \
+  {(base) +  4, 16}, \
+  {(base) +  5, 20}, \
+  {(base) +  6, 24}, \
+  {(base) +  7, 28}, \
+  {(base) +  8, 32}, \
+  {(base) +  9, 36}, \
+  {(base) + 10, 40}, \
+  {(base) + 11, 44}, \
+  {(base) + 12, 48}, \
+  {(base) + 13, 52}, \
+  {(base) + 14, 56}, \
+  {(base) + 15, 60}
+
+/* Convert an FPU register number into an offset into a ptrace
+   register structure.  */
+static const struct sh_corefile_regmap fpregs_table[] =
+{
+  REGSx16 (FR0_REGNUM),
+  /* XXX: REGSx16(XF0_REGNUM) omitted.  */
+  {FPSCR_REGNUM, 128},
+  {FPUL_REGNUM,  132},
+  {-1 /* Terminator.  */, 0}
+};
+
+
+/* From <machine/mcontext.h>.  */
+static const int shnbsd_mc_reg_offset[] =
+{
+  (20 * 4),	/* r0 */
+  (19 * 4),	/* r1 */
+  (18 * 4),	/* r2 */ 
+  (17 * 4),	/* r3 */ 
+  (16 * 4),	/* r4 */
+  (15 * 4),	/* r5 */
+  (14 * 4),	/* r6 */
+  (13 * 4),	/* r7 */
+  (12 * 4),	/* r8 */ 
+  (11 * 4),	/* r9 */
+  (10 * 4),	/* r10 */
+  ( 9 * 4),	/* r11 */
+  ( 8 * 4),	/* r12 */
+  ( 7 * 4),	/* r13 */
+  ( 6 * 4),	/* r14 */
+  (21 * 4),	/* r15/sp */
+  ( 1 * 4),	/* pc */
+  ( 5 * 4),	/* pr */
+  ( 0 * 4),	/* gbr */
+  -1,
+  ( 4 * 4),	/* mach */
+  ( 3 * 4),	/* macl */
+  ( 2 * 4),	/* sr */
+};
+
+/* SH register sets.  */
+
 
+static void
+shnbsd_sigtramp_cache_init (const struct tramp_frame *,
+			     struct frame_info *,
+			     struct trad_frame_cache *,
+			     CORE_ADDR);
+
+/* The siginfo signal trampoline for NetBSD/sh3 versions 2.0 and later */
+static const struct tramp_frame shnbsd_sigtramp_si2 =
+{
+  SIGTRAMP_FRAME,
+  2,
+  {
+    { 0x64f3, ULONGEST_MAX },			/* mov     r15,r4 */
+    { 0xd002, ULONGEST_MAX },			/* mov.l   .LSYS_setcontext */
+    { 0xc380, ULONGEST_MAX },			/* trapa   #-128 */
+    { 0xa003, ULONGEST_MAX },			/* bra     .Lskip1 */
+    { 0x0009, ULONGEST_MAX },			/* nop */
+    { 0x0009, ULONGEST_MAX },			/* nop */
+ /* .LSYS_setcontext */
+    { 0x0134, ULONGEST_MAX }, { 0x0000, ULONGEST_MAX },     /* 0x134 */
+ /* .Lskip1 */
+    { 0x6403, ULONGEST_MAX },			/* mov     r0,r4 */
+    { 0xd002, ULONGEST_MAX },			/* mov.l   .LSYS_exit  */
+    { 0xc380, ULONGEST_MAX },			/* trapa   #-128 */
+    { 0xa003, ULONGEST_MAX },			/* bra     .Lskip2 */
+    { 0x0009, ULONGEST_MAX },			/* nop */
+    { 0x0009, ULONGEST_MAX },			/* nop */
+ /* .LSYS_exit */
+    { 0x0001, ULONGEST_MAX }, { 0x0000, ULONGEST_MAX },     /* 0x1 */
+/* .Lskip2 */
+    { TRAMP_SENTINEL_INSN, ULONGEST_MAX }
+  },
+  shnbsd_sigtramp_cache_init
+};
+
+static void
+shnbsd_sigtramp_cache_init (const struct tramp_frame *self,
+			    struct frame_info *next_frame,
+			    struct trad_frame_cache *this_cache,
+			    CORE_ADDR func)
+{
+  struct gdbarch *gdbarch = get_frame_arch (next_frame);
+  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);
+  int sp_regnum = gdbarch_sp_regnum (gdbarch);
+  CORE_ADDR sp = get_frame_register_unsigned (next_frame, sp_regnum);
+  CORE_ADDR base;
+  const int *reg_offset;
+  int num_regs;
+  int i;
+
+  reg_offset = shnbsd_mc_reg_offset;
+  num_regs = ARRAY_SIZE (shnbsd_mc_reg_offset);
+  /* SP already points at the ucontext. */
+  base = sp;
+  /* offsetof(ucontext_t, uc_mcontext) == 36 */
+  base += 36;
+
+  for (i = 0; i < num_regs; i++)
+    if (reg_offset[i] != -1)
+      trad_frame_set_reg_addr (this_cache, i, base + reg_offset[i]);
+
+  /* Construct the frame ID using the function start.  */
+  trad_frame_set_id (this_cache, frame_id_build (sp, func));
+}
 
 static void
 shnbsd_init_abi (struct gdbarch_info info,
@@ -64,11 +200,16 @@ shnbsd_init_abi (struct gdbarch_info inf
 {
   struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);
 
-  tdep->core_gregmap = (struct sh_corefile_regmap *)regmap;
-  tdep->sizeof_gregset = 84;
+  tdep->core_gregmap = (struct sh_corefile_regmap *)gregs_table;
+  tdep->sizeof_gregset = 88;
+
+  tdep->core_fpregmap = (struct sh_corefile_regmap *)fpregs_table;
+  tdep->sizeof_fpregset = 0;	/* XXX */
 
   set_solib_svr4_fetch_link_map_offsets
-    (gdbarch, svr4_ilp32_fetch_link_map_offsets);
+    (gdbarch, nbsd_ilp32_solib_svr4_fetch_link_map_offsets);
+
+  tramp_frame_prepend_unwinder (gdbarch, &shnbsd_sigtramp_si2);
 }
 
 void
@@ -76,6 +217,4 @@ _initialize_shnbsd_tdep (void)
 {
   gdbarch_register_osabi (bfd_arch_sh, 0, GDB_OSABI_NETBSD,
 			  shnbsd_init_abi);
-  gdbarch_register_osabi (bfd_arch_sh, 0, GDB_OSABI_OPENBSD,
-			  shnbsd_init_abi);
 }
