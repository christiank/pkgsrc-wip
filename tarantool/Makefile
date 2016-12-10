# $NetBSD$

PKGNAME=		tarantool-1.8.0
CATEGORIES=		databases

GIT_REPOSITORIES=	tarantool
GIT_REPO.tarantool=	/home/charlotte/devel/tarantool
GIT_BRANCH.tarantool=	netbsd_support_wip

MAINTANER=	cfkoch@edgebsd.org
COMMENT=	NoSQL database and Lua application server
HOMEPAGE=	http://tarantool.org/
LICENSE=	2-clause-bsd

WRKSRC=		${WRKDIR}/tarantool
USE_CMAKE=	yes
MAKE_PROGRAM=	gmake # The libluajit Git submodule requires it
USE_LANGUAGES+=	c c++
USE_TOOLS+=	gsed

.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
