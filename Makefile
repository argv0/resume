default: andygross-resume.pdf


andygross-resume.pdf: andygross-resume.tex publications.bib
	xelatex $^
	biber andygross-resume
	xelatex $^	
	xelatex $^		
	

clean:
	-rm -f *.aux *.bbl *.blg *.bcf *.run.xml
	-rm -f andygross-resume.out
	-rm -f andygross-resume.log
	-rm -f andygross-resume.pdf

