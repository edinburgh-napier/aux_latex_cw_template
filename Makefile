report.pdf: report.tex references.bib
	pdflatex $<
	bibtex report
	pdflatex $<
	pdflatex $<

clean:
	rm -f *.log
	rm -f *.idx
	rm -f *.toc
	rm -f *.dvi
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.brf
	rm -f *.out
	rm -f *.gz
	rm -f *.ilg
	rm -f *.nlo
	rm -f *.lof
	rm -f *.lot
	rm -f *.pdf

.PHONY: clean
