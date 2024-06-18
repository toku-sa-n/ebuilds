# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A language server that offers Lua language support - programmed in Lua"
HOMEPAGE="https://github.com/LuaLS/lua-language-server"

EGIT_REPO_URI="https://github.com/LuaLS/lua-language-server.git"
EGIT_COMMIT="${PV}"

RDEPEND="
	dev-lang/lua
"

DEPEND="${RDEPEND}"

BDEPEND="
	dev-lang/lua
	dev-build/ninja
"

LICENSE="MIT"

SLOT="0"

KEYWORDS="~amd64"

inherit git-r3

src_unpack() {
	git-r3_src_unpack
}

src_compile() {
	./make.sh
}

src_install() {
	dobin ${FILESDIR}/lua-language-server || die

	insinto /usr/share/${PN}
	for file in bin locale meta script debugger.lua main.lua; do
		doins -r ${file}
	done

	fperms 755 /usr/share/${PN}/bin/${PN}
}
