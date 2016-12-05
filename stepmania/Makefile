# $NetBSD$

PKGNAME=	stepmania-5.0.12
CATEGORIES=	games
MASTER_SITES=	# defined

GIT_REPOSITORIES=	stepmania
#GIT_REPO.stepmania=	https://github.com/stepmania/stepmania.git
GIT_REPO.stepmania=	/home/charlotte/devel/stepmania
#GIT_TAG.stepmania=	v${PKGVERSION_NOREV}
GIT_BRANCH.stepmania=	charlotte_netbsd

# When we clone, we get the default branch by default ("master"), but it
# contains submodules, at least one of which contains submodules *itself* --
# and THAT has a remote which is configured in a way that requires user
# intervention (you're prompted for username and password).
#
# But we want to switch to a branch/release which does NOT utilize
# submodules in the first place. Fine. So we simply don't do a recursive Git
# clone.
GIT_SKIP_SUBMODULES.stepmania=	yes

WRKSRC=	${WRKDIR}/stepmania

USE_LANGUAGES+=	c c++
USE_CMAKE=		yes
CONFIGURE_DIRS+=	Build
CMAKE_ARG_PATH=		..
CMAKE_ARGS+=		-DWITH_STATIC_LINKING:BOOL=OFF

#CMAKE_ARGS+=		-DWITH_FFMPEG_JOBS:INT=${MAKE_JOBS}

DEPENDS+=	nasm>=2:../../devel/nasm

.include "../../audio/libmad/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../graphics/glew/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
#.include "../../math/ltm/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
#.include "../../security/libtomcrypt/buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# XXX which version? upstream says you need the submodule'd one, but I
# seriously doubt that
#.include "../../multimedia/ffmpeg/buildlink3.mk" 
