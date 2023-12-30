# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Postmodern immutable and persisten data structures for C++"
HOMEPAGE="https://github.com/arximboldi/immer"
SRC_URI="https://github.com/arximboldi/immer/archive/refs/tags/v${PV}.tar.gz"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	dev-cpp/catch
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	local mycmakeargs=(
		Catch2
	)
	cmake_src_configure
}

src_compile() {
	cmake_build
}

src_install() {
	cmake_src_install
}
