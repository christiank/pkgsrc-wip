# $NetBSD$

DISTNAME=	libpsoarchive-67cc80d9901ff0caf94774841cece7fdb6613ea9
CATEGORIES=	devel
GIT_REPO=	git://git.code.sf.net/p/sylverant/libpsoarchive.git
GIT_REVISION=	${PKGVERSION_NOREV}

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

.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
