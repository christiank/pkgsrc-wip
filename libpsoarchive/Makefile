# $NetBSD$

DISTNAME=	libpsoarchive-c3bc8c80b4d94d160c3ea984fc7d31c5e546c92f
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=Sylverant/}
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	dressupgeekout@gmail.com
HOMEPAGE=	https://github.com/Sylverant/libpsoarchive
COMMENT=	Library for archive formats used in Phantasy Star Online
LICENSE=	gnu-gpl-v2 # XXX

USE_LANGUAGES=	c
EXTRACT_USING=	gtar

GNU_CONFIGURE=	yes
USE_TOOLS+=	aclocal automake autoconf libtool pkg-config

pre-configure:
	cd ${WRKSRC} && ./autogen.sh

.include "../../mk/bsd.pkg.mk"
