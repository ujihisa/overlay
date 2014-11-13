EAPI=5

DESCRIPTION="apply todesking's gc patch on gvim"
HOMEPAGE="http://github.com/ujihisa/overlay"
#SRC_URI=""
S=${WORKDIR}

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-editors/gvim"
RDEPEND="${DEPEND}"

src_install() {
	insinto /etc/portage/patches/app-editors/gvim/
	doins "${FILESDIR}/todesking.patch"
}
