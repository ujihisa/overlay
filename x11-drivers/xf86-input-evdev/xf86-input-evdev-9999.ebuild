# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

# Originally based on Gentoo's official xf86-input-evdev-2.5.0.ebuild
EAPI=5
inherit linux-info xorg-2 git-r3

HOMEPAGE="https://gitlab.com/at-home-modifier/at-home-modifier-evdev/wikis/home"
DESCRIPTION="Generic Linux input driver with at-home-modifier hack"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sh sparc x86"
IUSE=""
XORG_EAUTORECONF="yes"

EGIT_REPO_URI="https://gitlab.com/at-home-modifier/at-home-modifier-evdev.git"
# Set this if you compile from a branch other than master.
# EGIT_BRANCH="my-branch"
# Set this if you compile from a commit other than HEAD.
# EGIT_COMMIT="1234abcd"

RDEPEND=">=x11-base/xorg-server-1.12[udev]
	dev-libs/libevdev
	sys-libs/mtdev"
DEPEND="${RDEPEND}
		>=x11-proto/inputproto-2.1.99.3
		>=sys-kernel/linux-headers-2.6"

src_install() {
	xorg-2_src_install
	dodoc README*
}
