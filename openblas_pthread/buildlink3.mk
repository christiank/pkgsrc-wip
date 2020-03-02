# $NetBSD$

BUILDLINK_TREE+=	openblas_pthread

.if !defined(OPENBLAS_PTHREAD_BUILDLINK3_MK)
OPENBLAS_PTHREAD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.openblas_pthread+=	openblas_pthread>=0.3.5
BUILDLINK_PKGSRCDIR.openblas_pthread?=		../../wip/openblas_pthread
.endif	# OPENBLAS_PTHREAD_BUILDLINK3_MK

BUILDLINK_TREE+=	-openblas_pthread
