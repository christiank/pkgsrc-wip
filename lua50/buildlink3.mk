# $NetBSD: buildlink3.mk,v 1.2 2007/06/02 03:34:43 hoka_adam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LUA50_BUILDLINK3_MK:=	${LUA50_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	lua50
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlua50}
BUILDLINK_PACKAGES+=	lua50
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}lua50

.if ${LUA50_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.lua50+=	lua50>=5.0.3
BUILDLINK_PKGSRCDIR.lua50?=	../../wip/lua50
.endif	# LUA50_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
