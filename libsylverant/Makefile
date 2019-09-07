# $NetBSD$

DISTNAME=	libsylverant-5cee74aeb5fe0079f7203168a3d49fea6b262dc7
CATEGORIES=	games
GIT_REPO=	git://git.code.sf.net/p/sylverant/libsylverant.git
GIT_REVISION=	${PKGVERSION_NOREV}

MAINTAINER=	dressupgeekout@gmail.com
HOMEPAGE=	https://github.com/Sylverant/libsylverant
COMMENT=	Support library for the Sylverant PSO Server
LICENSE=	gnu-gpl-v2 # XXX

USE_LANGUAGES=	c
EXTRACT_USING=	gtar

GNU_CONFIGURE=	yes
USE_TOOLS+=	aclocal automake autoconf libtool pkg-config

pre-configure:
	cd ${WRKSRC} && ./autogen.sh

.include "../../databases/mysql57-client/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
