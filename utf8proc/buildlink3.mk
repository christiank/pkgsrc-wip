# $NetBSD$

BUILDLINK_TREE+=	utf8proc

.if !defined(UTF8PROC_BUILDLINK3_MK)
UTF8PROC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.utf8proc+=	utf8proc>=2.1.0
BUILDLINK_PKGSRCDIR.utf8proc?=	../../converters/utf8proc
BUILDLINK_DEPMETHOD.utf8proc?=	build
.endif	# UTF8PROC_BUILDLINK3_MK

BUILDLINK_TREE+=	-utf8proc
