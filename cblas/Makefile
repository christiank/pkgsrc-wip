# $NetBSD$

COMMENT=	C interface to a BLAS library
LAPACK_PART=	cblas
LAPACK_PART_CMAKE_ARGS=	\
	-DUSE_OPTIMIZED_BLAS=ON \
	-DBLAS_LIBRARIES=${BLAS_LIBS:Q} \
	-DUSE_OPTIMIZED_LAPACK=ON \
	-DLAPACK_LIBRARIES=${LAPACK_LIBS:Q} \
	-DCBLAS=ON -DLAPACKE=OFF

.include "../../wip/mk/blas.buildlink3.mk"
.include "../lapack/Makefile.common"
