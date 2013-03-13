# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION=""
HOMEPAGE="https://github.com/van-clj/plusplus-lingrbot"
SRC_URI="http://van-clj.github.com/plusplus-lingrbot/lingr-plusplus-bot-${PV}-standalone.jar -> ${P}-standalone.jar"

LICENSE="EPL-1.0"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="|| ( >=virtual/jre-1.5 >=virtual/jdk-1.5 )"

S="${WORKDIR}"

src_unpack() {
	cp ${DISTDIR}/${P}-standalone.jar ${WORKDIR}/${P}-standalone.jar
}

src_install() {
	echo -e "#!/bin/sh\nexec java -jar /opt/${P}/lib64/${P}-standalone.jar" > plusplus-lingrbot
	dobin plusplus-lingrbot
	#echo -e "{}" > plusplus.json

	into "/opt/${P}"
	dolib "${P}-standalone.jar"
}
