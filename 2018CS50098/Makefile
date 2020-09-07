all:
	@ocamllex lexer.mll
	@ocamlyacc parser.mly
	@ocamlc -c parser.mli
	@ocamlc -c lexer.ml
	@ocamlc -c parser.ml
	@ocamlc -c sheet.ml
	@ocamlc -o sheet lexer.cmo parser.cmo sheet.cmo
	@./sheet input.txt
	@rm lexer.ml
	@rm parser.mli
	@rm parser.ml
	@rm *.cmi
	@rm *.cmo
	@rm sheet