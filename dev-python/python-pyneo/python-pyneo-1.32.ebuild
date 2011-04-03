# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="Helper library for the pyneo framework."
HOMEPAGE="http://www.pyneo.org/"
SRC_URI="http://gstaedtner.net/pyneo/packages/pyneo-1.32.tar.gz"

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

S=${WORKDIR}/pyneo-${PV}/${PN}
