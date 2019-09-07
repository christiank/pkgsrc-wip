# $NetBSD$

BUILDLINK_TREE+=	libpsoarchive

.if !defined(LIBPSOARCHIVE_BUILDLINK3_MK)
LIBPSOARCHIVE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libpsoarchive+=	libpsoarchive>=0
BUILDLINK_ABI_DEPENDS.libpsoarchive+=	libpsoarchive>=0
BUILDLINK_PKGSRCDIR.libpsoarchive?=	../../wip/libpsoarchive

.endif # LIBPSOARCHIVE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libpsoarchive
