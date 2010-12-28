# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="A GSM 07.10 compliant multiplexer"
HOMEPAGE="http://www.pyneo.org/"
SRC_URI="http://gstaedtner.net/pyneo/packages/pyneo-1.32.tar.gz"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-libs/dbus-glib"
RDEPEND="${DEPEND}"

S=${WORKDIR}/pyneo-${PV}/${PN}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
	newinitd "${FILESDIR}/${PN}.initd" ${PN} || die
	newconfd "${FILESDIR}/${PN}.confd" ${PN} || die
}
