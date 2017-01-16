# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.h2o
PKG_SUPPORTED_OPTIONS+=	mruby
PLIST_VARS+=		mruby

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mmruby)
CMAKE_ARGS+=	-DWITH_MRUBY:BOOL=ON
.endif
