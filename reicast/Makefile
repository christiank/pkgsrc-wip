# $NetBSD$

GITHUB_PROJECT=	reicast-emulator
GITHUB_TAG=	aeea2e1372ff9271f73e1197caea46a8851b6369
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
