# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils

DESCRIPTION="Pyneo is a suite of daemons implementing functionality for mobile
devices"
HOMEPAGE="http://www.pyneo.org/"
EGIT_REPO_URI="http://git.pyneo.org/browse/cgit/pyneo/"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools
		dev-lang/python[gdbm]
		dev-python/simplejson
		dev-python/pycrypto
		dev-python/dbus-python
		dev-python/pygobject
		dev-python/pyserial
		dev-python/gst-python
		dev-python/feedparser
		dev-python/python-pyneo"
RDEPEND="${DEPEND}
		media-libs/gst-plugins-base
		net-dialup/ppp
		net-wireless/bluez
		net-misc/gsm0710muxd"

src_compile() {
		cd ${S}/${PN}
		distutils_src_compile || die "install failed"
}

src_install() {
		cd ${S}/${PN}
		distutils_src_install || die "install failed"
		newinitd "${FILESDIR}/${PN}.initd" ${PN} || die
}