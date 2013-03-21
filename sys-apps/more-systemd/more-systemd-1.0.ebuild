# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="systemd unit files"
HOMEPAGE="http://github.com/ujihisa/overlay"
SRC_URI=""

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}

# src_compile() {
# 	echo 1
# }

src_install() {
	insinto "/usr/lib/systemd/system/"
	mv "${FILESDIR}/openvpn_at.service" "openvpn@.service"
	doins "openvpn@.service"
	doins "${FILESDIR}/postgresql.service"
}
