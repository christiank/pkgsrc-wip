# $NetBSD$

FLNEWS_VERSION=	0.17pre3

DISTNAME=	flnews-${FLNEWS_VERSION}
CATEGORIES=	news
MASTER_SITES=	http://micha.freeshell.org/flnews/src/
MASTER_SITES+=	http://www.ybtra.de/flnews-mirror/src/
MASTER_SITES+=	http://www.southcity.de/flnews/src/
EXTRACT_SUFX=	.tar.bz2
#EXTRACT_USING=	bsdtar

MAINTAINER=	michael.baeuerle@gmx.net
HOMEPAGE=	http://micha.freeshell.org/flnews/
COMMENT=	Fast and lightweight USENET newsreader with GUI
LICENSE=	modified-bsd AND 2-clause-bsd AND unicode

USE_LANGUAGES=	c c++

TEST_TARGET=	test

# Bug report contact address used for GUI
FLNEWS_MAINTAINER=	${MAINTAINER}

.include "options.mk"

post-extract:
	${CP} ${FILESDIR}/CONFIG ${WRKSRC}

# Prepare CONFIG file
SUBST_CLASSES+=			edit-config
SUBST_STAGE.edit-config=	pre-configure
SUBST_MESSAGE.edit-config=	Preparing CONFIG file ...
SUBST_FILES.edit-config=	CONFIG
SUBST_SED.edit-config=		-e 's,@VERSION@,${FLNEWS_VERSION},g'
SUBST_SED.edit-config+=		-e 's,@PREFIX@,${PREFIX},g'
SUBST_SED.edit-config+=		-e 's,@MAINT@,${FLNEWS_MAINTAINER},g'
SUBST_SED.edit-config+=		-e 's,@IP6@,${FLNEWS_OPT_DISABLE_IP6},g'
SUBST_SED.edit-config+=		-e 's,@NLS@,${FLNEWS_OPT_DISABLE_NLS},g'
SUBST_SED.edit-config+=		-e 's,@XDBE@,${FLNEWS_OPT_DISABLE_XDBE},g'
SUBST_SED.edit-config+=		-e 's,@MAN_PATH@,${PREFIX}/${PKGMANDIR},g'
# NetBSD reports X/Open XSI extension as not available using the POSIX
# sysconf(_SC_XOPEN_VERSION) call, but has a sufficient implementation
# => Force using it
.if ${OPSYS} == "NetBSD"
SUBST_SED.edit-config+=		-e 's,@FORCE_XSI@,1,g'
.else
SUBST_SED.edit-config+=		-e 's,@FORCE_XSI@,0,g'
.endif
# NetBSD reports IPv6 as not available using the POSIX sysconf(_SC_IPV6)
# call, but has a sufficient implementation
# => Force using it if inet6 option of pkgsrc package is selected
.if ${OPSYS} == "NetBSD" && ${FLNEWS_OPT_DISABLE_IP6} == 0
SUBST_SED.edit-config+=		-e 's,@FORCE_IP6@,1,g'
.else
SUBST_SED.edit-config+=		-e 's,@FORCE_IP6@,0,g'
.endif
# Old SunPro compilers cannot create dependencies with the "-M" option
# => Use makedepend instead for all SunPro compilers
.if ${OPSYS} == "SunOS" && ${PKGSRC_COMPILER:Msunpro}
SUBST_SED.edit-config+=		-e 's,@DEP_MD@,,g'
SUBST_SED.edit-config+=		-e 's,@DEP_COMP@,\#,g'
.else
SUBST_SED.edit-config+=		-e 's,@DEP_MD@,\#,g'
SUBST_SED.edit-config+=		-e 's,@DEP_COMP@,,g'
.endif

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} config

.if ${OPSYS} == "SunOS" && ${PKGSRC_COMPILER:Msunpro}
BUILD_DEPENDS+=			makedepend-[0-9]*:../../devel/makedepend
.endif

BUILDLINK_API_DEPENDS.zlib+=	zlib>=1.2.3
.include "../../devel/zlib/buildlink3.mk"
# OpenSSL 1.1 API is required for signature algorithm negotiation
# OpenSSL 1.1 API is required for TLSv1.2 FFDHE group check
# At least OpenSSL 1.1.1 is required for TLSv1.3
BUILDLINK_API_DEPENDS.openssl+=	openssl>=1.0.0
.include "../../security/openssl/buildlink3.mk"
# FLTK must be compiled with multithreading support
# FLTK version 1.4 is supported (should be compiled with pango support)
#.include "../../x11/fltk13/buildlink3.mk"
.include "../../wip/fltk14-devel/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
