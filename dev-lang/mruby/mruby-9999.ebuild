# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Lightweight Ruby"
HOMEPAGE="https://github.com/mruby/mruby"
SRC_URI=""
EGIT_REPO_URI="https://github.com/mruby/mruby.git"

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-devel/bison dev-lang/ruby"
RDEPEND="${DEPEND}"

src_compile() {
	emake
	ruby ./minirake
}

src_install() {
	dodoc AUTHORS ChangeLog NEWS README.md TODO CONTRIBUTING.md # doc/compile/README.md doc/mrbgems/README.md
	dobin bin/mirb bin/mrbc bin/mruby
}
