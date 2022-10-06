all: test_my_list rapport.pdf

rapport.pdf: rapport.tex
	pdflatex rapport.tex

test_my_list: my_list.ml test_my_list.ml
	ocamlc -o test_my_list my_list.ml test_my_list.ml

clean:
	rm -rf rapport.pdf test_my_list *.cmi *.cmo *.aux *.log *.pyg *~
