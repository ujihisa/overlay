# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="LALR(1) parser generator for C++ and Vim script"
HOMEPAGE="https://github.com/marionette-of-u/kp19pp"
SRC_URI=""
EGIT_REPO_URI="https://github.com/marionette-of-u/kp19pp.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

inherit git-2

src_compile() {
	emake
}

src_install() {
	dobin kp19pp
}
