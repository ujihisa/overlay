# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="change display brightness for Asus ZenBook"
HOMEPAGE="https://github.com/ujihisa/asus-brightness"
SRC_URI=""
EGIT_REPO_URI="https://github.com/ujihisa/asus-brightness.git"

LICENSE="GPL3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

inherit git-2

#src_compile() {
#}

src_install() {
	dobin bin/asus-brightness
}
