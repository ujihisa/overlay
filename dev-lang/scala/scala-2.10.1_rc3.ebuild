# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
MY_P="scala-2.10.1-RC3"

DESCRIPTION="The Scala Programming Language"
HOMEPAGE="http://www.scala-lang.org/"

SRC_URI="${HOMEPAGE}downloads/distrib/files/${MY_P}.tgz -> ${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=""
DEPEND="${RDEPEND}
        >=virtual/jre-1.6
        "

S="${WORKDIR}"

src_install() {
        echo -e "#!/bin/sh\nexec sh /usr/share/${MY_P}/bin/scala \${@+\"\$@\"}" > scala
        dobin scala
        echo -e "#!/bin/sh\nexec sh /usr/share/${MY_P}/bin/scalac \${@+\"\$@\"}" > scalac
        dobin scalac

        insinto /usr/share
        doins -r "${MY_P}"
}
