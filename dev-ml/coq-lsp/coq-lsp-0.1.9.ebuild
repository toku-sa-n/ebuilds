# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

COQ_VERSION="8.19"

DESCRIPTION="Visual Studio Code Extension and Language Server Protocol for Coq"
HOMEPAGE="https://github.com/ejgallego/coq-lsp"
SRC_URI="https://github.com/ejgallego/coq-lsp/archive/${PV}+${COQ_VERSION}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/${P}-${COQ_VERSION}"

LICENSE="LGPL-2.1"

SLOT="0"

KEYWORDS="~amd64"
IUSE="+ocamlopt test"

RDEPEND="
	=sci-mathematics/coq-${COQ_VERSION}.0:=

	dev-ml/cmdliner:=
	dev-ml/yojson:=
	dev-ml/url:=
	dev-ml/dune-build-info:=

	dev-ml/menhir:=

	dev-ml/ppx_inline_test:=

	dev-ml/coq-serapi:=
"

DEPEND="
	${RDEPEND}
"

BEPEND="
	test? ( dev-ml/alcotest )
"

DOCS=(CODE_OF_CONDUCT.md CONTRIBUTING.md README.md)
