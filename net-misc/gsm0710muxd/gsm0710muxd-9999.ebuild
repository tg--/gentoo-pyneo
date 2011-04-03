# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils git

DESCRIPTION="A GSM 07.10 compliant multiplexer"
HOMEPAGE="http://www.pyneo.org/"
EGIT_REPO_URI="http://git.pyneo.org/browse/cgit/${PN}/"
EGIT_PROJECT="pyneo"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-libs/dbus-glib"
RDEPEND="${DEPEND}"

src_configure() {
		./autogen.sh
		econf || die "Configure failed"
}

src_compile() {
		emake || die "Compile failed"
}

src_install() {
		emake DESTDIR="${D}" install || die "Install failed"
		newinitd "${FILESDIR}/${PN}.initd" ${PN} || die
		newconfd "${FILESDIR}/${PN}.confd" ${PN} || die
}
