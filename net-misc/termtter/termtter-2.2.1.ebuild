# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-misc/termtter/termtter-1.10.0.ebuild,v 1.1 2011/11/13 08:28:20 naota Exp $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_GEMSPEC="termtter.gemspec"

inherit ruby-fakegem

DESCRIPTION="Termtter is a terminal based Twitter client."
HOMEPAGE="https://github.com/termtter/termtter"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
