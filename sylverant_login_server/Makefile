# $NetBSD$

DISTNAME=	sylverant_login_server-220880d2db883eafd4ac48465f7e3b8e5545e46e
CATEGORIES=	games
GIT_REPO=	git://git.code.sf.net/p/sylverant/login_server.git
GIT_REVISION=	${PKGVERSION_NOREV}

MAINTAINER=	dressupgeekout@gmail.com
HOMEPAGE=	https://github.com/Sylverant/patch_server
COMMENT=	Login server for the Phantasy Star Online series of games
LICENSE=	gnu-gpl-v2 # XXX

USE_LANGUAGES=	c
EXTRACT_USING=	gtar

GNU_CONFIGURE=	yes
USE_TOOLS+=	aclocal automake autoconf libtool pkg-config

pre-configure:
	cd ${WRKSRC} && ./autogen.sh

.include "../../databases/mysql57-client/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../wip/libpsoarchive/buildlink3.mk"
.include "../../wip/libsylverant/buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
