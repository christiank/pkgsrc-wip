# $NetBSD: buildlink3.mk,v 1.1 2004/04/13 20:56:41 blef Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
XBSQL_BUILDLINK3_MK:=	${XBSQL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	xbsql
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxbsql}
BUILDLINK_PACKAGES+=	xbsql

.if !empty(XBSQL_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.xbsql+=	xbsql>=0.11
BUILDLINK_PKGSRCDIR.xbsql?=	../../wip/xbsql
.endif	# XBSQL_BUILDLINK3_MK

.include "../../wip/xbase/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
