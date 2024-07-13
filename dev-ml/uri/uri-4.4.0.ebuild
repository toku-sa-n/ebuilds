# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

COQ_VERSION="8.19"

DESCRIPTION="RFC3986 URI parsing library for OCaml"
HOMEPAGE="https://github.com/mirage/ocaml-uri"
SRC_URI="https://github.com/mirage/ocaml-uri/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/ocaml-uri-${PV}"

LICENSE="ISC"

SLOT="0/${PV}"

KEYWORDS="~amd64"
IUSE="+ocamlopt test"

RDEPEND="
	dev-ml/core_bench:=
	dev-ml/stringext:=
	dev-ml/re:=
"

DEPEND="
	${RDEPEND}
"

BDEPEND="
	test? (
		dev-ml/ounit2:=
		dev-ml/crowbar:=
	)
"
