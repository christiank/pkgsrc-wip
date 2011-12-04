# $NetBSD: buildlink3.mk,v 1.5 2011/12/04 12:56:44 phonohawk Exp $

BUILDLINK_TREE+=	hs-regex-posix

.if !defined(HS_REGEX_POSIX_BUILDLINK3_MK)
HS_REGEX_POSIX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-regex-posix+=	hs-regex-posix>=0.95.1
BUILDLINK_PKGSRCDIR.hs-regex-posix?=	../../wip/hs-regex-posix

.include "../../wip/hs-regex-base/buildlink3.mk"
.endif	# HS_REGEX_POSIX_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-regex-posix
