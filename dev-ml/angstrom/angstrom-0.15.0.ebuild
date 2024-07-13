# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Parser combinators built for speed and memory efficiency"
HOMEPAGE="https://github.com/inhabitedtype/angstrom"
SRC_URI="https://github.com/inhabitedtype/angstrom/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"

SLOT="0/${PV}"

KEYWORDS="~amd64"
IUSE="+ocamlopt test"

RDEPEND="
	dev-ml/bigstringaf:=
	dev-ml/result:=
	dev-ml/ppx_let:=
"

DEPEND="
	${RDEPEND}
"

BDEPEND="
	test? (
		dev-ml/alcotest:=
	)
"
