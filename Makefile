.PHONY: all clean

all: dunn_2024_sge_2025_ghenis_discussant.pdf

sge_2025_slides.pdf: main.tex policyengine.sty
	pdflatex -jobname=dunn_2024_sge_2025_ghenis_discussant main || (echo "LaTeX failed. Check if all required packages are installed." && exit 1)
	pdflatex -jobname=dunn_2024_sge_2025_ghenis main || (echo "LaTeX failed on second run." && exit 1)

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.pdf
	# Keep main.tex and dunn_2024_sge_2025_ghenis_discussant.pdf
	touch dunn_2024_sge_2025_ghenis_discussant.pdf