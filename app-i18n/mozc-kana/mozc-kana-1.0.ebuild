# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="mozc kana layout for us keyboard"
HOMEPAGE="http://github.com/ujihisa/overlay"
#SRC_URI=""
S=${WORKDIR}

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-i18n/mozc"
RDEPEND="${DEPEND}"

src_install() {
	insinto /etc/portage/patches/app-i18n/mozc/
	doins "${FILESDIR}/kana-layout.patch"
}
