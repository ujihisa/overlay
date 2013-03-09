# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

USE_RUBY="ruby19"
RUBY_FAKEGEM_TASK_TEST=""
RUBY_S="jugyo-termtter-9fc2743"

inherit ruby-fakegem

DESCRIPTION="Termtter is a terminal based Twitter client."
HOMEPAGE="https://github.com/jugyo/termtter"
SRC_URI="https://rubygems.org/downloads/${P}.gem"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend "dev-ruby/highline
	dev-ruby/json
	dev-ruby/notify
	dev-ruby/rubytter
	dev-ruby/termcolor"

each_ruby_install() {
	each_fakegem_install
	ruby_fakegem_doins VERSION
}
