# $NetBSD$

GITHUB_PROJECT=	reicast-emulator
GITHUB_TAG=	6b434be3ae3cb6a1e0b56c8f93838be9e3a7dfa2
DISTNAME=	reicast-${GITHUB_TAG}
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_GITHUB:=dressupgeekout/}

MAINTAINER=	dressupgeekout@gmail.com
HOMEPAGE=	https://reicast.com/
COMMENT=	Sega Dreamcast emulator
LICENSE=	gnu-gpl-v2

EXTRACT_USING=	gtar
USE_CMAKE=	yes
USE_LANGUAGES=	c c++

.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../wip/imgui/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
