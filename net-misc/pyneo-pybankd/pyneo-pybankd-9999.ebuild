# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils eutils git

DESCRIPTION="Banking module for the pyneo suite"
HOMEPAGE="http://www.pyneo.org/"
EGIT_REPO_URI="http://git.pyneo.org/browse/cgit/${PN}/"
EGIT_PROJECT="pyneo"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="net-libs/aqbanking"
RDEPEND="${DEPEND}
		net-misc/pyneod"

src_compile() {
		distutils_src_compile || die "Build failed."
}

src_install() {
		distutils_src_install || die "Install failed."
}
