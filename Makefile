# $Id: Makefile,v 1.619 2003/11/15 15:27:44 minskim Exp $
# $NetBSD: Makefile,v 1.619 2003/11/15 15:27:44 minskim Exp $

COMMENT=	WIP pkgsrc packages

SUBDIR+=	4stAttack
SUBDIR+=	NeoPop-SDL
SUBDIR+=	PPower4
SUBDIR+=	Radiator
SUBDIR+=	Radiator-all
SUBDIR+=	Redland-rdf
SUBDIR+=	WEPCrack
SUBDIR+=	XFree86
SUBDIR+=	XFree86-clients
SUBDIR+=	XFree86-docs
SUBDIR+=	XFree86-fonts100dpi
SUBDIR+=	XFree86-fonts75dpi
SUBDIR+=	XFree86-fontsCyrillic
SUBDIR+=	XFree86-fontsEncodings
SUBDIR+=	XFree86-fontsMisc
SUBDIR+=	XFree86-fontsScalable
SUBDIR+=	XFree86-fontserver
SUBDIR+=	XFree86-libs
SUBDIR+=	XFree86-man
SUBDIR+=	XFree86-server
SUBDIR+=	abuse_sdl
SUBDIR+=	acid
SUBDIR+=	adodb
SUBDIR+=	adtool
SUBDIR+=	afterstep2
SUBDIR+=	aget
SUBDIR+=	allegro
SUBDIR+=	amap
SUBDIR+=	amavisd-new
SUBDIR+=	amsn
SUBDIR+=	aolserver
SUBDIR+=	ap-bunzip2
SUBDIR+=	ap-frontpage
SUBDIR+=	ap-ometer
SUBDIR+=	ap-security
SUBDIR+=	ap2-python
SUBDIR+=	ap2-xslt
SUBDIR+=	apotheke
SUBDIR+=	argouml
SUBDIR+=	armagetron
SUBDIR+=	arping
SUBDIR+=	asfrecorder
SUBDIR+=	asterisk
SUBDIR+=	atasm
SUBDIR+=	autoproject
SUBDIR+=	avida2
SUBDIR+=	axe
SUBDIR+=	barnyard
SUBDIR+=	bastard
SUBDIR+=	beast
SUBDIR+=	billardgl
SUBDIR+=	bin86
SUBDIR+=	bitchbot
SUBDIR+=	bnr2
SUBDIR+=	boost-base
SUBDIR+=	boost-thread
SUBDIR+=	boson
SUBDIR+=	bub-n-bros
SUBDIR+=	bugzilla
SUBDIR+=	busybox
SUBDIR+=	byacc
SUBDIR+=	c-news
SUBDIR+=	cal3d
SUBDIR+=	cal3d_cally
SUBDIR+=	cawf
SUBDIR+=	ccrypt
SUBDIR+=	ccze
SUBDIR+=	cdl3
SUBDIR+=	cdpr
SUBDIR+=	cgdb
SUBDIR+=	cgic
SUBDIR+=	cherokee
SUBDIR+=	chksniff
SUBDIR+=	chmlib
SUBDIR+=	cjk-latex
SUBDIR+=	cjk-latex-chinese
SUBDIR+=	cjk-latex-japanese
SUBDIR+=	cjk-latex-korean
SUBDIR+=	cops
SUBDIR+=	cvsd
SUBDIR+=	cyrus-imapd22
SUBDIR+=	d2x
SUBDIR+=	dancer-ircd
SUBDIR+=	darcnes-svgalib
SUBDIR+=	darkice
SUBDIR+=	dasm
SUBDIR+=	dbf
SUBDIR+=	dccserver
SUBDIR+=	devIL
SUBDIR+=	dfbpoint
SUBDIR+=	dfbsee
SUBDIR+=	dfm
SUBDIR+=	directfb
SUBDIR+=	directory-administrator
SUBDIR+=	distella
SUBDIR+=	dmidecode
SUBDIR+=	dnsmasq
SUBDIR+=	docbook-simple
SUBDIR+=	dpkg
SUBDIR+=	drweb
SUBDIR+=	drweb-clients-shared
SUBDIR+=	drweb-dc
SUBDIR+=	drweb-smf
SUBDIR+=	drwright
SUBDIR+=	dtdparse
SUBDIR+=	dumb
SUBDIR+=	dzt
SUBDIR+=	eag
SUBDIR+=	ed
SUBDIR+=	eic
SUBDIR+=	elvis
SUBDIR+=	elvis-x11
SUBDIR+=	emirror
SUBDIR+=	entropy
SUBDIR+=	ezbounce
SUBDIR+=	festival-gaim
SUBDIR+=	fisg
SUBDIR+=	fluxconf
SUBDIR+=	fluxspace
SUBDIR+=	fragroute
SUBDIR+=	freeglut
SUBDIR+=	freenet-tools
SUBDIR+=	fribidi
SUBDIR+=	frontpage
SUBDIR+=	fsv
SUBDIR+=	fwbuilder
SUBDIR+=	galib
SUBDIR+=	gcompris
SUBDIR+=	gdbada
SUBDIR+=	gdrdao
SUBDIR+=	geeklog
SUBDIR+=	ghostpcl
SUBDIR+=	gift
SUBDIR+=	giftcurs
SUBDIR+=	giftui
SUBDIR+=	gimp-current
SUBDIR+=	gkrellm-launch
SUBDIR+=	gkrellm-reminder
SUBDIR+=	gkrellm2
SUBDIR+=	gkrellm2-flynn
SUBDIR+=	gkrellm2-launch
SUBDIR+=	gkrellm2-leds
SUBDIR+=	gkrellm2-multiping
SUBDIR+=	gkrellm2-server
SUBDIR+=	gkrellm2-share
SUBDIR+=	gkrellm2-snmp
SUBDIR+=	gkrellm2-volume
SUBDIR+=	gkrellm2-weather
SUBDIR+=	gkrellm2-xmms
SUBDIR+=	gl-117
SUBDIR+=	glaxium
SUBDIR+=	glide3
SUBDIR+=	glkterm
SUBDIR+=	glulxe
SUBDIR+=	gnats4
SUBDIR+=	gnetcat
SUBDIR+=	gnome-speech
SUBDIR+=	gnome2-extras
SUBDIR+=	gnome2-pkgview
SUBDIR+=	gnome2-system-monitor
SUBDIR+=	gnome2-themes-extra
SUBDIR+=	gnomeicu
SUBDIR+=	gnucash-docs
SUBDIR+=	gnumeric
SUBDIR+=	gnunet
SUBDIR+=	gotmail
SUBDIR+=	gov2
SUBDIR+=	gpdf
SUBDIR+=	grdc
SUBDIR+=	grip
SUBDIR+=	gsasl
SUBDIR+=	gss
SUBDIR+=	gstreamer-player
SUBDIR+=	gtick
SUBDIR+=	gtk-engines-thinice
SUBDIR+=	gtk-sharp
SUBDIR+=	gtk-theme-switch
SUBDIR+=	gtk2-engines-mist
SUBDIR+=	gtkglk
SUBDIR+=	gtkmagnetic
SUBDIR+=	gtkpod
SUBDIR+=	gucharmap
SUBDIR+=	gurlchecker
SUBDIR+=	gwc
SUBDIR+=	gxmame
SUBDIR+=	hasciicam
SUBDIR+=	hashcash
SUBDIR+=	heimdal
SUBDIR+=	ht
SUBDIR+=	ht2html
SUBDIR+=	html2latex
SUBDIR+=	httrack
SUBDIR+=	hugo
SUBDIR+=	hydra
SUBDIR+=	hydrogen
SUBDIR+=	ices
SUBDIR+=	icmpchat
SUBDIR+=	idled
SUBDIR+=	igal
SUBDIR+=	iip
SUBDIR+=	iisemulator
SUBDIR+=	ike-scan
SUBDIR+=	ilohamail
SUBDIR+=	imake
SUBDIR+=	imhangul
SUBDIR+=	imhangul_status_applet
SUBDIR+=	ion-devel
SUBDIR+=	ion-dock
SUBDIR+=	ish
SUBDIR+=	jabberd
SUBDIR+=	jabberd2
SUBDIR+=	jakarta-log4j
SUBDIR+=	jazz
SUBDIR+=	jdk12
SUBDIR+=	jdk12-openjit
SUBDIR+=	jdk13
SUBDIR+=	jdk13-openjit
SUBDIR+=	jigdo
SUBDIR+=	jpeg_ls
SUBDIR+=	kannel-gateway
SUBDIR+=	kapital
SUBDIR+=	kgpg
SUBDIR+=	kmplayer
SUBDIR+=	koffice-i18n-de
SUBDIR+=	koffice-i18n-es
SUBDIR+=	konversation
SUBDIR+=	korelib
SUBDIR+=	kvirc
SUBDIR+=	l2tpd
SUBDIR+=	lammpi
SUBDIR+=	lash
SUBDIR+=	lbdb
SUBDIR+=	ldapbrowser
SUBDIR+=	ldapdns
SUBDIR+=	lde
SUBDIR+=	libdialog
SUBDIR+=	libdisasm
SUBDIR+=	libdvbpsi
SUBDIR+=	libfwbuilder
SUBDIR+=	libgpg-error
SUBDIR+=	libgringotts
SUBDIR+=	libhydrogen
SUBDIR+=	libidn
SUBDIR+=	libneural
SUBDIR+=	libntlm
SUBDIR+=	libogg-nightly
SUBDIR+=	libol
SUBDIR+=	libprelude
SUBDIR+=	libshout
SUBDIR+=	libstatgrab
SUBDIR+=	libvc
SUBDIR+=	libvorbis-nightly
SUBDIR+=	libwpd
SUBDIR+=	liferea
SUBDIR+=	lilo
SUBDIR+=	lilypond20
SUBDIR+=	lincvs
SUBDIR+=	links-hacked
SUBDIR+=	linux-ch
SUBDIR+=	linux-chprofessional
SUBDIR+=	linux-kbd
SUBDIR+=	linux-makedev
SUBDIR+=	linux-modutils
SUBDIR+=	linux-nfs-utils
SUBDIR+=	liquidwar
SUBDIR+=	ljpeg
SUBDIR+=	lletters
SUBDIR+=	lmarbles
SUBDIR+=	lsdvd
SUBDIR+=	mailfilter
SUBDIR+=	mailman
SUBDIR+=	man-db
SUBDIR+=	map-browse
SUBDIR+=	mathomatic
SUBDIR+=	mc
SUBDIR+=	mcats
SUBDIR+=	mcats-iodbc
SUBDIR+=	memtester
SUBDIR+=	metatheme
SUBDIR+=	mftrace
SUBDIR+=	mhonarc
SUBDIR+=	mit-krb5
SUBDIR+=	mixer.tk
SUBDIR+=	mixmaster
SUBDIR+=	mkdep
SUBDIR+=	mlview
SUBDIR+=	monkey-bubble
SUBDIR+=	mopac
SUBDIR+=	mplusfonts
SUBDIR+=	mtf
SUBDIR+=	muse
SUBDIR+=	mutella
SUBDIR+=	mutt-devel
SUBDIR+=	mutt-vc-query
SUBDIR+=	mysql4-client
SUBDIR+=	mysql4-server
SUBDIR+=	mysqlcc
SUBDIR+=	mythtv
SUBDIR+=	nagios-base
SUBDIR+=	nagios-plugin-ldap
SUBDIR+=	nagios-plugin-mysql
SUBDIR+=	nagios-plugin-pgsql
SUBDIR+=	nagios-plugin-snmp
SUBDIR+=	nagios-plugins
SUBDIR+=	natali
SUBDIR+=	nautilus-cd-burner
SUBDIR+=	nautilus-media
SUBDIR+=	navigatrix
SUBDIR+=	ncps
SUBDIR+=	net-tools
SUBDIR+=	netbeans-ide
SUBDIR+=	netkit-base
SUBDIR+=	newsx
SUBDIR+=	nikto
SUBDIR+=	noip
SUBDIR+=	nuppelvideo
SUBDIR+=	obconf
SUBDIR+=	ode
SUBDIR+=	ogre
SUBDIR+=	oinkmaster
SUBDIR+=	opax
SUBDIR+=	openbox3
SUBDIR+=	openmortal
SUBDIR+=	openvpn
SUBDIR+=	p5-CDDB
SUBDIR+=	p5-Chart
SUBDIR+=	p5-Class-Factory-Util
SUBDIR+=	p5-Class-MethodMaker
SUBDIR+=	p5-Class-Singleton
SUBDIR+=	p5-DBI-Shell
SUBDIR+=	p5-Data-TemporaryBag
SUBDIR+=	p5-DateTime
SUBDIR+=	p5-DateTime-Event-Cron
SUBDIR+=	p5-DateTime-LeapSecond
SUBDIR+=	p5-DateTime-Set
SUBDIR+=	p5-DateTime-TimeZone
SUBDIR+=	p5-ExtUtils-Depends
SUBDIR+=	p5-ExtUtils-PkgConfig
SUBDIR+=	p5-File-Tail
SUBDIR+=	p5-GeoIP
SUBDIR+=	p5-Glib2
SUBDIR+=	p5-GnuPG-Interface
SUBDIR+=	p5-HTML-Latex
SUBDIR+=	p5-HTTP-GHTTP
SUBDIR+=	p5-IO-Tee
SUBDIR+=	p5-Net-Pcap
SUBDIR+=	p5-Parallel-ForkManager
SUBDIR+=	p5-SWF-File
SUBDIR+=	p5-Scalar-List-Utils
SUBDIR+=	p5-Set-Crontab
SUBDIR+=	p5-Set-Infinite
SUBDIR+=	p5-String-Approx
SUBDIR+=	p5-Text-Reform
SUBDIR+=	p5-Tk-TableMatrix
SUBDIR+=	p5-gtk2
SUBDIR+=	palm-db-tools
SUBDIR+=	par2
SUBDIR+=	pdb2ldif
SUBDIR+=	pdns
SUBDIR+=	pear-Date
SUBDIR+=	pear-HTML_Common
SUBDIR+=	pear-HTML_Select
SUBDIR+=	pear-Log
SUBDIR+=	perl58
SUBDIR+=	perltidy
SUBDIR+=	pgp6
SUBDIR+=	pgpenvelope
SUBDIR+=	php-jpgraph
#SUBDIR+=	php4			# not a package
SUBDIR+=	php4-mssql
SUBDIR+=	php4-mysql4
SUBDIR+=	picasm
SUBDIR+=	picprog
SUBDIR+=	pinball
SUBDIR+=	plugger
SUBDIR+=	pnet
SUBDIR+=	pnetlib
SUBDIR+=	poedit
SUBDIR+=	pointless
SUBDIR+=	portmap
SUBDIR+=	postal
SUBDIR+=	ppp
SUBDIR+=	prelude-lml
SUBDIR+=	prelude-manager
SUBDIR+=	prelude-manager-mysql
SUBDIR+=	prelude-manager-pgsql
SUBDIR+=	prelude-nids
SUBDIR+=	premake
SUBDIR+=	procps
SUBDIR+=	prtunnel
SUBDIR+=	psh
SUBDIR+=	pts
SUBDIR+=	pxlib
SUBDIR+=	pxview
SUBDIR+=	py-CVSTools
SUBDIR+=	py-EditObj
SUBDIR+=	py-OpenGL
SUBDIR+=	py-OpenSSL
SUBDIR+=	py-Py2Play
SUBDIR+=	py-PythonDirector
SUBDIR+=	py-RXP
SUBDIR+=	py-Soya
SUBDIR+=	py-albatross
SUBDIR+=	py-biggles
SUBDIR+=	py-buildbot
SUBDIR+=	py-cjkcodecs
SUBDIR+=	py-elementtree
SUBDIR+=	py-game
SUBDIR+=	py-gdick
SUBDIR+=	py-generateDS
SUBDIR+=	py-gnosis-utils
SUBDIR+=	py-ipython
SUBDIR+=	py-libpcap
SUBDIR+=	py-spark
SUBDIR+=	py-spreadmodule
SUBDIR+=	py-twisted
SUBDIR+=	py-zsi
SUBDIR+=	py23-html-docs
SUBDIR+=	pysite
SUBDIR+=	q3-urbanterror
SUBDIR+=	qico
SUBDIR+=	qinx
SUBDIR+=	qn-x11
SUBDIR+=	rapidsvn
SUBDIR+=	rc.subr
SUBDIR+=	rcorder
SUBDIR+=	rdesktop
SUBDIR+=	regexxer
SUBDIR+=	rlpr
SUBDIR+=	rolo
SUBDIR+=	rosegarden-current
SUBDIR+=	rudiments
SUBDIR+=	samba3
SUBDIR+=	sarg
SUBDIR+=	scew
SUBDIR+=	scm
SUBDIR+=	scons
SUBDIR+=	scponly
SUBDIR+=	send-pr
SUBDIR+=	sgmltools-lite
SUBDIR+=	shoutcast
SUBDIR+=	sks
SUBDIR+=	slocate
SUBDIR+=	slrn-pl
SUBDIR+=	smtprc
SUBDIR+=	smtprc-gui
SUBDIR+=	smtpscan
SUBDIR+=	socat
SUBDIR+=	speedx
SUBDIR+=	sqlrelay
SUBDIR+=	sredird
SUBDIR+=	srvx
SUBDIR+=	stickynotes-applet
SUBDIR+=	strace
SUBDIR+=	streamripper
SUBDIR+=	stunnel3
SUBDIR+=	sudoscript
SUBDIR+=	superkaramba
SUBDIR+=	svgalib
SUBDIR+=	sysklogd
SUBDIR+=	syslog-ng
SUBDIR+=	sysvinit
SUBDIR+=	tcc
SUBDIR+=	tendra
SUBDIR+=	tetrinet
SUBDIR+=	tetrinetx
SUBDIR+=	tex-foiltex
SUBDIR+=	tex-hlatex
SUBDIR+=	tex-passivetex
SUBDIR+=	tex-prosper
SUBDIR+=	tex-xmltex
SUBDIR+=	thaixfonts
SUBDIR+=	thcrut
SUBDIR+=	theme-gtk-bluecurve
SUBDIR+=	theora-nightly
SUBDIR+=	thunderbird-bin
SUBDIR+=	thunderbird-bin-nightly
SUBDIR+=	thy
SUBDIR+=	tinc
SUBDIR+=	tinylogin
SUBDIR+=	tls
SUBDIR+=	toppler
SUBDIR+=	totem
SUBDIR+=	treecc
SUBDIR+=	tsm
SUBDIR+=	tsocks
SUBDIR+=	tutos
SUBDIR+=	tuxnes
SUBDIR+=	tuxtype2
SUBDIR+=	typhoon
SUBDIR+=	ubs
SUBDIR+=	uclibc
SUBDIR+=	udhcp
SUBDIR+=	umix
SUBDIR+=	unmo3
SUBDIR+=	unrealircd
SUBDIR+=	unrealtournament-server
SUBDIR+=	upx
SUBDIR+=	util-linux
SUBDIR+=	vba
SUBDIR+=	vcdgear
SUBDIR+=	viewcvs
SUBDIR+=	vixie-cron
SUBDIR+=	vlc
SUBDIR+=	vm-pop3d
SUBDIR+=	vmac
SUBDIR+=	vmsbackup
SUBDIR+=	vte
SUBDIR+=	weewm
SUBDIR+=	wmclockmon
SUBDIR+=	wmitime
SUBDIR+=	wmnetload
SUBDIR+=	words
SUBDIR+=	wxhugo
SUBDIR+=	xawtv
SUBDIR+=	xbelmark
SUBDIR+=	xchm
SUBDIR+=	xevil
SUBDIR+=	xmail
SUBDIR+=	xml2doc
SUBDIR+=	xmms-dumb
SUBDIR+=	xmms-modplug
SUBDIR+=	xmms-musepack
SUBDIR+=	xmms-pitch
SUBDIR+=	xmmsctrl
SUBDIR+=	xplore
SUBDIR+=	xsh
SUBDIR+=	xwpe
SUBDIR+=	yafray
SUBDIR+=	zebra-pj
SUBDIR+=	zenity
SUBDIR+=	zinf

.include "../mk/bsd.pkg.subdir.mk"
