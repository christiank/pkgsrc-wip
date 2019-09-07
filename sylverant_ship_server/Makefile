# $NetBSD$

DISTNAME=	sylverant_ship_server-2bcdb4a18bd040320e8b7d4d5ee2c53d8f5e5b6c
CATEGORIES=	games
GIT_REPO=	git://git.code.sf.net/p/sylverant/ship_server.git
GIT_REVISION=	${PKGVERSION_NOREV}

MAINTAINER=	dressupgeekout@gmail.com
HOMEPAGE=	https://github.com/Sylverant/ship_server
COMMENT=	Ship (game) server for the Phantasy Star Online series of games.
LICENSE=	gnu-gpl-v2 # XXX

USE_LANGUAGES=	c
EXTRACT_USING=	gtar

GNU_CONFIGURE=	yes
USE_TOOLS+=	aclocal automake autoconf libtool pkg-config

pre-configure:
	cd ${WRKSRC} && ./autogen.sh

.include "../../databases/mysql57-client/buildlink3.mk"
.include "../../security/gnutls/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../wip/libpsoarchive/buildlink3.mk"
.include "../../wip/libsylverant/buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
