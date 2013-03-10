# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $id$

EAPI=5

inherit vim-plugin

DESCRIPTION="Ultimate Vim package manager"
HOMEPAGE="https://github.com/Shougo/neobundle.vim"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE=""
SRC_URI="https://github.com/Shougo/neobundle.vim/archive/ver.${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/ver.${PV}"

VIM_PLUGIN_HELPFILES="${PN}.txt"
