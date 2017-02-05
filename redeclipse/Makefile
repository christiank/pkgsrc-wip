# $NetBSD$

PKGNAME=	redeclipse-1.5.8
CATEGORIES=	games

GIT_REPOSITORIES=	redeclipse
#GIT_REPO.redeclipse=	https://github.com/red-eclipse/base.git
GIT_REPO.redeclipse=	/home/charlotte/devel/redeclipse/base
GIT_TAG.redeclipse=	v${PKGVERSION_NOREV}

MAINTAINER=	cfkoch@edgebsd.org
HOMEPAGE=	http://redeclipse.net/
COMMENT=	A free casual arena shooter
LICENSE=	XXX

WRKSRC=		${WRKDIR}/redeclipse
NO_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES+=	c c++

BUILD_DIRS=	src
INSTALL_TARGET=	system-install
MAKE_FLAGS+=	MANDIR=/${PKGMANDIR}

.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../net/enet/buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
