# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

COQ_VERSION="8.19.0"

DESCRIPTION="Coq Protocol Playground with Se(xp)rialization of Internal Structures."
HOMEPAGE="https://github.com/ejgallego/coq-serapi"
SRC_URI="https://github.com/ejgallego/coq-serapi/archive/${COQ_VERSION}+${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/${PN}-${COQ_VERSION}-${PV}"

LICENSE="LGPL-2.1-or-later"

SLOT="0"

KEYWORDS="~amd64"
IUSE="+ocamlopt test"

RDEPEND="
	=sci-mathematics/coq-${COQ_VERSION}:=

	dev-ml/cmdliner:=
	dev-ml/findlib:=
	dev-ml/sexplib:=

	dev-ml/ppx_import:=
	dev-ml/ppx_deriving:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/ppx_compare:=
	dev-ml/ppx_hash:=

	dev-ml/yojson:=
	dev-ml/ppx_deriving_yojson:=
"

DEPEND="
	${RDEPEND}
"

BEPEND="
"
