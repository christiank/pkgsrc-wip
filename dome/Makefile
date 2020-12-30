# $NetBSD$

DISTNAME=	dome-1.4.0
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GITHUB:=domeengine/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	cfkoch@edgebsd.org
HOMEPAGE=	https://www.domeengine.com
COMMENT=	Framework for making 2D games using the Wren programming language
LICENSE=	mit

USE_LANGUAGES=	c
USE_TOOLS+=	gmake bash

TOOL_DEPENDS+=	git-base-[0-9]*:../../devel/git-base

REPLACE_BASH+=	scripts/generateEmbedModules.sh

.include "../../devel/SDL2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
