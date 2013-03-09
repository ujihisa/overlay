# Copyright 2013 Tatsuhiro Ujihisa
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Clojure REPL bot for lingr"
HOMEPAGE="https://github.com/ujihisa/clojure-lingrbot"
SRC_URI="http://ujihisa.github.com/clojure-lingrbot/${P}-standalone.jar"

LICENSE="EPL-1.0"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="|| ( >=virtual/jre-1.5 >=virtual/jdk-1.5 )"

src_install() {
	echo -e "#!/bin/sh\nexec java -Djava.security.policy=/usr/share/${P}/example.policy -jar /usr/share/${P}/lib/clojure-lingrbot-1.0.0-SNAPSHOT-standalone.jar" > clojure-lingrbot
	dobin clojure-lingrbot

	insinto /usr/share
	doins -r "${P}"
}
