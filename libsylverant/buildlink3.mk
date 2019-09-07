# $NetBSD$

BUILDLINK_TREE+=	libsylverant

.if !defined(LIBSYLVERANT_BUILDLINK3_MK)
LIBSYLVERANT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libsylverant+=	libsylverant>=0
BUILDLINK_ABI_DEPENDS.libsylverant+=	libsylverant>=0
BUILDLINK_PKGSRCDIR.libsylverant?=	../../wip/libsylverant

.endif # LIBSYLVERANT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libsylverant
