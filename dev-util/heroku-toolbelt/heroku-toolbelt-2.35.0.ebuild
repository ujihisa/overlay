# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"
inherit ruby-fakegem
DESCRIPTION=""
HOMEPAGE="https://toolbelt.heroku.com/"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ruby_add_rdepend ">dev-ruby/rest-client-1.6.1
	<dev-ruby/rest-client-1.7
	dev-ruby/rubyzip"
