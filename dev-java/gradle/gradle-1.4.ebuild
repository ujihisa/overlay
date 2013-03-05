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
KEYWORDS="~amd64 ~x86"
IUSE=""

# NOTE: you need the java-overlay for this ebuild to work
RDEPEND=""
DEPEND="${RDEPEND}
	>=virtual/jre-1.6
	app-arch/unzip
	"

S="${WORKDIR}"

src_install() {
	#echo 'src_install'
	##tree "${S}"
	#mkdir "${S}/bin"
	#cp "${S}/gradle-1.4/bin/gradle" "${S}/bin/gradle"
	#mkdir "${S}/lib"
	#mv "${S}/gradle-1.4/lib/" "${S}/lib/"

	#rm -r "${S}/gradle-1.4"

	##mkdir "${S}/bin"
	##ls -a "${S}/bin"
	##ls -a "${DISTDIR}"
	##cp -r "${DISTDIR}/bin/gradle" "${S}/bin/gradle"
	##chmod +x "${S}/bin/gradle"
	##mkdir "${S}/lib"
	##cp -r "${DISTDIR}/lib/" "${S}/lib/"
	#chmod +x "${S}/bin/gradle"

	#into "/usr/share/${P}"
	#dobin gradle-1.4/bin/gradle
	#dolib gradle-1.4/lib/
	echo -e '#!/bin/sh\nexec /usr/share/gradle-1.4/bin/gradle ${@+"$@"}' > gradle
	dobin gradle

	insinto /usr/share
	doins -r gradle-1.4
}

pkg_postinst () {
	echo "cool"
#	echo "run lein command to download the actual leiningen"
}
