# $NetBSD$
#
###########################################################
#                  Generated by fbsd2pkg                  #
#              Mon Apr 29 11:01:43 CDT 2019               #
###########################################################

DISTNAME=	GEMMA-${PV}
CATEGORIES=	biology
MASTER_SITES=	${MASTER_SITE_GITHUB:=genetics-statistics/}
GITHUB_PROJECT=	GEMMA
GITHUB_TAG=	${PV}

MAINTAINER=	bacon@NetBSD.org
HOMEPAGE=	https://github.com/genetics-statistics/GEMMA
COMMENT=	Genome-wide Efficient Mixed Model Association
LICENSE=	gnu-gpl-v3

# Just assuming C and C++: Adjust this!
USE_LANGUAGES=	c c++
USE_TOOLS+=	gmake

CXXFLAGS+=	-I${PREFIX}/include/eigen3 -DOPENBLAS -DOPENBLAS_LEGACY
CXXFLAGS+=	-fpermissive
MAKE_FLAGS+=	LDFLAGS+="${BLAS_LIBS} -lgsl -lcblas -lz"
MAKE_FILE=	${FILESDIR}/Makefile

PV=		0.98.1
BLAS_ACCEPTED=	openblas	# Unusably slow with netlib

.include "../../devel/zlib/buildlink3.mk"
.include "../../wip/mk/blas.buildlink3.mk"
.include "../../wip/cblas/buildlink3.mk"
.include "../../math/gsl/buildlink3.mk"
.include "../../math/eigen3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
