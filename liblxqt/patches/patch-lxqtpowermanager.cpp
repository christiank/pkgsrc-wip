$NetBSD$

Fix build with Qt>=5.14

--- lxqtpowermanager.cpp.orig	2019-02-24 00:13:58.000000000 +0000
+++ lxqtpowermanager.cpp
@@ -31,6 +31,7 @@
 #include <QMessageBox>
 #include <QApplication>
 #include <QDesktopWidget>
+#include <QFile>
 #include <QtDebug>
 #include "lxqttranslator.h"
 #include "lxqtglobals.h"
