# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="Pyneo is a suite of daemons implementing functionality for mobile
devices"
HOMEPAGE="http://www.pyneo.org/"
SRC_URI="http://git.pyneo.org/browse/cgit/pyneo/snapshot/pyneo-1.32.tar.gz"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

DEPEND="dev-python/setuptools
		dev-lang/python
		dev-python/simplejson
		dev-python/pycrypto
		dev-python/dbus-python
		dev-python/pysqlite"
RDEPEND="${DEPEND}"

S=${WORKDIR}/pyneo-${PV}/${PN}
