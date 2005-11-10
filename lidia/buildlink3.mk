# $NetBSD: buildlink3.mk,v 1.1.1.1 2005/11/10 17:14:58 emil_s Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIDIA_BUILDLINK3_MK:=	${LIDIA_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	LiDIA
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NLiDIA}
BUILDLINK_PACKAGES+=	LiDIA

.if !empty(LIDIA_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.LiDIA+=	LiDIA>=2.1.3
BUILDLINK_PKGSRCDIR.LiDIA?=	../../wip/lidia
.endif	# LIDIA_BUILDLINK3_MK

.include "../../devel/gmp/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
