$NetBSD: patch-CMakeModules_config.h.cmake,v 1.4 2012/02/26 01:47:20 bubuchka Exp $

Fix compile problem due to ciso646.

--- CMakeModules/config.h.cmake.orig	2011-11-27 11:43:14.000000000 +0000
+++ CMakeModules/config.h.cmake
@@ -32,7 +32,7 @@
 #cmakedefine HAVE_ISO646_H
 
 #if defined( HAVE_ISO646_H )
-#include <iso646.h>
+#include <ciso646>
 #endif
 
 #if defined( HAVE_STRCASECMP )
