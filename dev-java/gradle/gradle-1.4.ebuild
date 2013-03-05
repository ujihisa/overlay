# Copyright 2013 Tatsuhiro Ujihisa
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
DISTUTILS_SRC_TEST=""

#MY_P="${MY_PN}-${PV/_/-}"
MY_P="${PV/_/-}"

DESCRIPTION="Automate *Groovy* projects without setting your hair on fire"
HOMEPAGE="http://www.gradle.org/"
SRC_URI="http://services.gradle.org/distributions/gradle-1.4-bin.zip"

LICENSE="ASIS"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

# NOTE: you need the java-overlay for this ebuild to work
RDEPEND=""
DEPEND="${RDEPEND}
	>=virtual/jre-1.6
	app-arch/unzip
	"

S="${WORKDIR}"

src_install() {
	echo -e "#!/bin/sh\nexec sh /usr/share/${P}/bin/gradle \${@+\"\$@\"}" > gradle
	dobin gradle

	insinto /usr/share
	doins -r "${P}"
}
