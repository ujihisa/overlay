# Copyright 2013 Tatsuhiro Ujihisa
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
DISTUTILS_SRC_TEST=""

MY_P="${MY_PN}-${PV/_/-}"

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

src_unpack() {
	cp "${DISTDIR}/gradle-1.4-bin.zip" "${S}"

	cd "${S}"
	unpack "gradle-1.4-bin.zip"
	rm "gradle-1.4-bin.zip"
	cd -
}

src_install() {
	mkdir "${S}/bin"
	cp "${S}/gradle-1.4/bin/gradle" "${S}/bin/gradle"
	mkdir "${S}/lib"
	cp "${S}/gradle-1.4/lib/*" "${S}/lib/"
	tree "${S}" | head -20
	#mkdir "${S}/bin"
	#ls -a "${S}/bin"
	#ls -a "${DISTDIR}"
	#cp -r "${DISTDIR}/bin/gradle" "${S}/bin/gradle"
	#chmod +x "${S}/bin/gradle"
	#mkdir "${S}/lib"
	#cp -r "${DISTDIR}/lib/" "${S}/lib/"
}

pkg_postinst () {
	echo "cool"
#	echo "run lein command to download the actual leiningen"
}
