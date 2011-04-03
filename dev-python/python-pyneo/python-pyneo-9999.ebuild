# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils eutils git

DESCRIPTION="Helper library for the pyneo framework."
HOMEPAGE="http://www.pyneo.org/"
EGIT_REPO_URI="http://git.pyneo.org/browse/cgit/${PN}/"
EGIT_PROJECT="pyneo"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools
		dev-lang/python
		dev-python/simplejson
		dev-python/pycrypto
		dev-python/dbus-python
		dev-python/pysqlite"
RDEPEND="${DEPEND}"

src_compile() {
		distutils_src_compile || die "compile failed"
}

src_install() {
		distutils_src_install || die "install failed"
}
