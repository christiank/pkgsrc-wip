--- src/shipgate.c.orig	2019-09-07 10:20:56.774041157 -0700
+++ src/shipgate.c	2019-09-07 10:21:07.334873612 -0700
@@ -46,6 +46,7 @@
 struct pidfh *pidfile_open(const char *path, mode_t mode, pid_t *pidptr);
 int pidfile_write(struct pidfh *pfh);
 int pidfile_remove(struct pidfh *pfh);
+int pidfile_fileno(struct pidfh *pfh);
 #endif
 
 #include "shipgate.h"
