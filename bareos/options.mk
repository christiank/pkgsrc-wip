# $NetBSD: options.mk,v 1.21 2014/10/12 00:08:26 gdt Exp $

PKG_OPTIONS_VAR=		PKG_OPTIONS.bareos
PKG_SUPPORTED_OPTIONS=		scsi-crypto
PKG_OPTIONS_REQUIRED_GROUPS=	database
PKG_OPTIONS_GROUP.database=	catalog-sqlite3 catalog-pgsql catalog-mysql
PKG_SUGGESTED_OPTIONS=		catalog-pgsql #scsi-crypto

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mcatalog-sqlite3)
.  include "../../databases/sqlite3/buildlink3.mk"
DBIMPL=sqllite3
CMAKE_ARGS+=		-Dsqlite3=yes
.elif !empty(PKG_OPTIONS:Mcatalog-pgsql)
.  include "../../mk/pgsql.buildlink3.mk"
DBIMPL=postgresql
CMAKE_ARGS+=		-Dpostgresql=yes
.elif !empty(PKG_OPTIONS:Mcatalog-mysql)
.  include "../../mk/mysql.buildlink3.mk"
DBIMPL=mysql
CMAKE_ARGS+=		-Dmysql=yes
.endif

.if !empty(PKG_OPTIONS:Mscsi-crypto)
CMAKE_ARGS+=	-Dscsi-crypto=yes
.endif
