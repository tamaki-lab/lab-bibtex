
all:
	cat *.bib crossref/*.bib > build/all.bib

test:
	pdflatex test.tex
	bibtex test
	pdflatex test.tex
clean:
	rm -f test.aux test.aux test.bbl test.blg test.dvi test.fdb_latexmk test.fls test.log test.pdf
