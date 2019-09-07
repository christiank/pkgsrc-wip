# $NetBSD$

DISTNAME=	sylverant_shipgate-4e2334a60328156fdcef3e3b7e3c58a018e52432
CATEGORIES=	games
GIT_REPO=	git://git.code.sf.net/p/sylverant/shipgate.git
GIT_REVISION=	${PKGVERSION_NOREV}

MAINTAINER=	dressupgeekout@gmail.com
HOMEPAGE=	https://github.com/Sylverant/ship_server
COMMENT=	Central server for ship servers to connect to for Sylverant
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
.include "../../wip/libsylverant/buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
