# $NetBSD: Makefile,v 1.4 2014/06/01 12:49:37 thomasklausner Exp $

DISTNAME=	${VERS}
PKGNAME=	megaglest-${VERS}
GITHUB_PROJECT=	megaglest-source
VERS=		3.12.0
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GITHUB:=MegaGlest/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://megaglest.org/
COMMENT=	Cross-platform 3D real-time-strategy game with seven factions
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/megaglest-source-${VERS}
USE_TOOLS+=	bash autoconf automake pkg-config
USE_CMAKE=	yes
USE_LANGUAGES=	c c++

EXTRACT_USING=	gtar
GCC_REQD+=	4.9
CXX_FLAGS+=	-std=c++11

.include "../../graphics/aalib/buildlink3.mk"
.include "../../x11/damageproto/buildlink3.mk"
.include "../../x11/dri2proto/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../x11/fixesproto/buildlink3.mk"
.include "../../audio/freealut/buildlink3.mk"
.include "../../x11/kbproto/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.include "../../devel/SDL2/buildlink3.mk"
.include "../../textproc/xerces-c/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/xf86vidmodeproto/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"
.include "../../x11/wxGTK28/buildlink3.mk"
.include "../../wip/ftgl/buildlink3.mk"
.include "../../wip/libircclient/buildlink3.mk"
.include "../../graphics/glew/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
