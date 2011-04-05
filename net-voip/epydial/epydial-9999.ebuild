# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils eutils git

DESCRIPTION="Epydial is a multifunctional phone-frontend for the pyneo stack."
HOMEPAGE="http://epydial.pyneo.org/"

# TEMPORARY URI, REPO WILL CHANGE SOONER OR LATER
EGIT_REPO_URI="git://gitorious.org/epydial/epydial-new.git"
# FUTURE URI, REPO WILL CHANGE TO THAT
#EGIT_REPO_URI="git://gitorious.org/epydial/epydial.git"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=net-misc/pyneod-9999
		dev-python/python-e_dbus
		dev-python/python-ecore
		dev-python/python-evas"
RDEPEND="${DEPEND}"
