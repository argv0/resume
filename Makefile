default: andygross-resume.pdf


andygross-resume.pdf: andygross-resume.aux andygross-resume.bbl
	xelatex andygross-resume.tex
	xelatex andygross-resume.tex
	
andygross-resume.bbl:  andygross-resume.tex
	biber andygross-resume

andygross-resume.aux:  andygross-resume.tex
	xelatex andygross-resume.tex
	

clean:
	-rm -f *.aux *.bbl *.blg *.bcf *.run.xml
	-rm -f andygross-resume.out
	-rm -f andygross-resume.log
	-rm -f andygross-resume.pdf

