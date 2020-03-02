# $NetBSD$

BUILDLINK_TREE+=	gnunet

.if !defined(GNUNET_BUILDLINK3_MK)
GNUNET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnunet+=	gnunet>=0.11.0
BUILDLINK_PKGSRCDIR.gnunet?=	../../wip/gnunet

pkgbase:= gnunet
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mtests)
.include "../../lang/python/tool.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Midn)
.include "../../devel/libidn2/buildlink3.mk"
.else
.include "../../devel/libidn/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mjson)
.include "../../textproc/jansson/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Msqlite3)
.include "../../databases/sqlite3/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mmysql)
.include "../../mk/mysql.buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mpgsql)
.include "../../mk/pgsql.buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mopus)
.include "../../audio/libopus/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mogg)
.include "../../multimedia/libogg/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mgstreamer)
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mpulseaudio)
.include "../../audio/pulseaudio/buildlink3.mk"
.endif

.if !empty(PKG_BUILD_OPTIONS.gnunet:Mzbar)
.include "../../wip/zbar/buildlink3.mk"
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/libextractor/buildlink3.mk"
.include "../../devel/libgsf/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"
.include "../../textproc/libunistring/buildlink3.mk"
.include "../../www/gnurl/buildlink3.mk"
.include "../../www/libmicrohttpd/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"

.if ${OPSYS} == "Linux" && !empty(PKG_BUILD_OPTIONS.gnunet:Mbluez)
.include "../../wip/bluez-libs/buildlink3.mk"
.endif

.endif # GNUNET_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnunet
