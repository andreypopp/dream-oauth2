init:
	git submodule init
	git submodule update
	opam switch create . -y --no-install 4.12.1
	opam install ./hyper -y --deps-only
	opam install . -y --deps-only
	opam install -y ppx_expect
	opam install -y ocaml-lsp-server ocamlformat

build:
	dune $@

start:
	dune exec dream-oauth2-example
