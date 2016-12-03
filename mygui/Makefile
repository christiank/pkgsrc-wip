# $NetBSD$

PKGNAME=	mygui-3.2.2
VERSION=	3.2.2
CATEGORIES=	devel games
MASTER_SITES=	# defined

GIT_REPOSITORIES=	mygui
GIT_REPO.mygui=		https://github.com/MyGUI/mygui.git
GIT_TAG.mygui=		MyGUI${PKGVERSION_NOREV}

MAINTAINER=	cfkoch@edgebsd.org
HOMEPAGE=	http://mygui.info
COMMENT=	Fast, flexible and simple GUI
LICENSE=	mit

WRKSRC=		${WRKDIR}/mygui
EXTRACT_USING=	gtar

USE_CMAKE=	yes
USE_LANGUAGES+=	c c++

.include "../../devel/ogre/buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
