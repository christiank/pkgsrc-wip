--- src/pidfile.c.orig	2019-09-06 22:31:34.940088023 -0700
+++ src/pidfile.c	2019-09-06 22:31:37.323252399 -0700
@@ -36,13 +36,18 @@
 #include <err.h>
 #include <errno.h>
 #include <fcntl.h>
-#include <libutil.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <time.h>
 #include <unistd.h>
 
+#if HAVE_LIBUTIL_H == 1
+#include <libutil.h>
+#elif HAVE_BSD_LIBUTIL_H == 1
+#include <bsd/libutil.h>
+#endif
+
 struct pidfh {
 	int	pf_fd;
 	char	*pf_path;
@@ -130,8 +135,14 @@
 	 * PID file will be truncated again in pidfile_write(), so
 	 * pidfile_write() can be called multiple times.
 	 */
+#ifdef flopen
 	fd = flopen(pfh->pf_path,
 	    O_WRONLY | O_CREAT | O_TRUNC | O_NONBLOCK, mode);
+#else
+	fd = open(pfh->pf_path,
+	    O_WRONLY | O_CREAT | O_TRUNC | O_NONBLOCK, mode);
+	flock(fd, LOCK_EX);
+#endif
 	if (fd == -1) {
 		if (errno == EWOULDBLOCK) {
 			if (pidptr == NULL) {
