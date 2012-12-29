# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

# Based on Gentoo's official xf86-input-evdev-2.5.0.ebuild
EAPI=3

HOMEPAGE="http://gitorious.org/at-home-modifier/pages/Home"
DESCRIPTION="Generic Linux input driver with at-home-modifier hack"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sh sparc x86"
IUSE=""
XORG_EAUTORECONF="yes"

if [[ ${PV} != 9999* ]] ; then
	inherit xorg-2

	SRC_URI="http://gitorious.org/at-home-modifier/download/blobs/raw/master/source/ahm-${PV}.tar.gz"
	S="${WORKDIR}/at-home-modifier-at-home-modifier"
else
	inherit xorg-2 git-2
	GIT_ECLASS="git-2"
	EGIT_REPO_URI="git://gitorious.org/at-home-modifier/at-home-modifier.git"
	# Set this if you compile from a branch other than master.
	# EGIT_BRANCH="my-branch"
	# Set this if you compile from a commit other than HEAD.
	# EGIT_COMMIT="1234abcd"
fi

RDEPEND=">=x11-base/xorg-server-1.6.3"
DEPEND="${RDEPEND}
	>=sys-kernel/linux-headers-2.6
	x11-proto/inputproto
	x11-proto/xproto"


src_install() {
	xorg-2_src_install
	dodoc README*
}
