# $NetBSD$

PKGNAME=	mygui-${VERSION}
DISTNAME=	mygui-${GITHUB_TAG}
GITHUB_TAG=	MyGUI${VERSION}
VERSION=	3.2.2
CATEGORIES=	devel games
MASTER_SITES=	${MASTER_SITE_GITHUB:=MyGUI/}

MAINTAINER=	cfkoch@edgebsd.org
HOMEPAGE=	http://mygui.info
COMMENT=	Fast, flexible and simple GUI
LICENSE=	mit

EXTRACT_USING=	gtar

USE_CMAKE=	yes
USE_LANGUAGES+=	c c++

.include "../../devel/ogre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
