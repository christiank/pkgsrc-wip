# $NetBSD: Makefile,v 1.8 2017/04/13 15:12:06 bsiegert Exp $

DISTNAME=	boringssl-20170919
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://boringssl.googlesource.com/boringssl/
COMMENT=	Fork of OpenSSL designed to meet Google's needs
LICENSE=	openssl

WRKSRC=		${WRKDIR}/boringssl

.include "../../lang/go/version.mk"

BUILD_DEPENDS+=	${GO_PACKAGE_DEP}

USE_TOOLS+=	cmake perl
USE_LANGUAGES+=	c gnu++11
USE_CMAKE=	yes
TEST_TARGET=	run_tests

AUTO_MKDIRS=	yes

CFLAGS+=	-D_XOPEN_SOURCE=600 -D_NETBSD_SOURCE

SUBST_CLASSES+=		go
SUBST_STAGE.go=		post-patch
SUBST_FILES.go=		CMakeLists.txt
SUBST_SED.go=		-e '/find_program.GO_EXECUTABLE/s,go,${GO},'

post-extract:
		${RUN} mkdir -p ${WRKDIR}/build

do-install:
	for d in bssl/bin bssl/lib bssl/include/openssl; do		\
		mkdir -p ${DESTDIR}${PREFIX}/$$d; 			\
	done
	${INSTALL_LIB} ${WRKSRC}/crypto/libcrypto.a ${DESTDIR}${PREFIX}/bssl/lib
	${INSTALL_LIB} ${WRKSRC}/ssl/libssl.a ${DESTDIR}${PREFIX}/bssl/lib
	${INSTALL_PROGRAM} ${WRKSRC}/ssl/test/bssl_shim ${DESTDIR}${PREFIX}/bssl/bin/bssl_shim
	${INSTALL_PROGRAM} ${WRKSRC}/ssl/ssl_test ${DESTDIR}${PREFIX}/bssl/bin/ssl_test
	${INSTALL_PROGRAM} ${WRKSRC}/tool/bssl ${DESTDIR}${PREFIX}/bssl/bin/bssl
	(cd ${WRKSRC}/include/openssl &&				\
		for f in *.h; do					\
			${INSTALL_DATA} $$f ${DESTDIR}${PREFIX}/bssl/include/openssl/$$f; \
		done)

.include "../../mk/bsd.pkg.mk"
