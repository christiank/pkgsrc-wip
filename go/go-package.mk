# $NetBSD: go-package.mk,v 1.21 2018/11/30 18:38:19 rillig Exp $
#
# This file implements common logic for compiling Go programs in pkgsrc.
#
# === Package-settable variables ===
#
# GO_MODULE (optional)
#	Set to "yes" to do a module-based build (EXPERIMENTAL).
#
# GO_SRCPATH (required)
#	The patch that can be used with "go get" to import the current
#	package. This is usually the URL without the leading protocol.
#
#	Examples:
#		github.com/username/repository
#		gopkg.in/check.v1
#
# GO_DIST_BASE (optional)
#	Path this package extracts to.
#
#	Default:
#		The last path component of ${GO_SRCPATH}
#	Examples:
#		${GITHUB_PROJECT}-${GITHUB_TAG}*
#		${GITHUB_PROJECT}-${GITHUB_TAG:S/v//}
#		${DISTNAME}
#
# GO_BUILD_PATTERN (optional)
#	Argument used for 'go install'.
#	In most cases, the default is fine.
#
#	Default:
#		"${GO_SRCPATH}/...", which means all files below GO_SRCPATH.
#
# Keywords: go golang
#

# Implementation notes
#
# The compiled Go code is tied to a specific compiler version, and the
# compilation is fast. So the plan is:
#
# 1. Compile everything.
# 2. Install binaries into bin/.
# 3. Install source code and packages into a separate gopkg tree.
#
# We implement buildlink by creating a separate tree during the build and
# linking only the packages explicitly mentioned in dependencies there.
#
# All packages build-depend on the default Go release. Go packages should be
# revbumped when that package is updated.
#

.include "../../lang/go/version.mk"

_GO_DIST_BASE!=		basename ${GO_SRCPATH}
GO_DIST_BASE?=		${_GO_DIST_BASE}

.if !empty(${GO_MODULE:M[Yy][Ee][Ss]})
GO_BUILD_PATTERN?=	all
.else
GO_BUILD_PATTERN?=	${GO_SRCPATH}/...
WRKSRC=			${WRKDIR}/src/${GO_SRCPATH}
.endif

MAKE_JOBS_SAFE=		no
INSTALLATION_DIRS+=	bin gopkg
USE_TOOLS+=		pax

BUILD_DEPENDS+=		${GO_PACKAGE_DEP}

GOTOOLDIR=		go${GOVERSSUFFIX}/pkg/tool/${GO_PLATFORM}

PRINT_PLIST_AWK+=	/^@pkgdir bin$$/ { next; }
PRINT_PLIST_AWK+=	/^@pkgdir gopkg$$/ { next; }

.if !empty(${GO_MODULE:M[Yy][Ee][Ss]})
MAKE_ENV+=	GO111MODULE=on GOPROXY=file://${WRKDIR}/.proxy
.else
MAKE_ENV+=	GO111MODULE=off GOPATH=${WRKDIR}:${BUILDLINK_DIR}/gopkg 
.endif
MAKE_ENV+=	GOCACHE=${WRKDIR}/.cache/go-build

.if !target(post-extract) && empty(${GO_MODULE:M[Yy][Ee][Ss]})
post-extract:
	${RUN} ${MKDIR} ${WRKSRC}
	${RUN} ${RM} -fr ${WRKDIR}/${GO_DIST_BASE}/.hg
	${RUN} ${MV} ${WRKDIR}/${GO_DIST_BASE}/* ${WRKSRC}
.endif

.if !target(do-build)
do-build:
	${RUN} ${PKGSRC_SETENV} ${MAKE_ENV} ${GO} install -v ${GO_BUILD_PATTERN}
.endif

.if !target(do-test)
do-test:
	${RUN} ${PKGSRC_SETENV} ${TEST_ENV} ${MAKE_ENV} ${GO} test -v ${GO_BUILD_PATTERN}
.endif

.if !target(do-install)
do-install:
	${RUN} cd ${WRKDIR}; [ ! -d bin ] || ${PAX} -rw bin ${DESTDIR}${PREFIX}
	${RUN} cd ${WRKDIR}; [ ! -d pkg ] || ${PAX} -rw src pkg ${DESTDIR}${PREFIX}/gopkg
.endif

_VARGROUPS+=		go
_PKG_VARS.go=		GO_SRCPATH GO_DIST_BASE GO_BUILD_PATTERN
_USER_VARS.go=		GO_VERSION_DEFAULT
_SYS_VARS.go=		GO GO_VERSION GOVERSSUFFIX GOARCH GOCHAR \
			GOOPT GOTOOLDIR GO_PLATFORM
_DEF_VARS.go=		GO14_VERSION GO19_VERSION GO110_VERSION \
			GO111_VERSION INSTALLATION_DIRS MAKE_JOBS_SAFE \
			NOT_FOR_PLATFORM ONLY_FOR_PLATFORM SSP_SUPPORTED \
			WRKSRC
_USE_VARS.go=		GO_PACKAGE_DEP
_SORTED_VARS.go=	INSTALLATION_DIRS *_FOR_PLATFORM
