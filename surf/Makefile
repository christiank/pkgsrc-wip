# $NetBSD: Makefile,v 1.6 2015/07/13 11:10:36 leot1990 Exp $

DISTNAME=	surf-2.0
CATEGORIES=	www
MASTER_SITES=	http://dl.suckless.org/surf/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://surf.suckless.org/
COMMENT=	Surf is a fast and minimalistic web browser based on WebKit2/GTK+
LICENSE=	mit

MAKE_JOBS_SAFE=	no

USE_TOOLS+=		pkg-config
USE_LANGUAGES=		c99

SUBST_CLASSES+=		configmk
SUBST_STAGE.configmk=	pre-configure
SUBST_MESSAGE.configmk=	Fixing config.mk
SUBST_FILES.configmk=	config.mk
SUBST_SED.configmk+=	-e 's,/usr/local,${PREFIX},g'
SUBST_SED.configmk+=	-e 's,share/man,${PKGMANDIR},g'
SUBST_SED.configmk+=	-e 's,/usr/X11R6,${X11BASE},g'
SUBST_SED.configmk+=	-e 's,^CFLAGS *= ,CFLAGS += ,'
SUBST_SED.configmk+=	-e 's,^LDFLAGS *= ,LDFLAGS += ,'
SUBST_SED.configmk+=	-e 's/cc/${CC:Q}/'

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "../../www/webkit-gtk/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
