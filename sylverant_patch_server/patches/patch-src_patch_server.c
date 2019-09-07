--- src/patch_server.c.orig	2019-09-06 22:32:15.009542319 -0700
+++ src/patch_server.c	2019-09-06 22:19:24.457753713 -0700
@@ -63,6 +63,7 @@
 struct pidfh *pidfile_open(const char *path, mode_t mode, pid_t *pidptr);
 int pidfile_write(struct pidfh *pfh);
 int pidfile_remove(struct pidfh *pfh);
+int pidfile_fileno(const struct pidfh *pfh);
 #endif
 
 #include "patch_packets.h"
