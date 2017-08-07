#
# Build constants
#
BIB_MASTER=/home/psmith/NAS/Work/Research/Citations/bibs/psmithLibrary.bib
BIB_LOCAL=book.bib
TEMPFILE=temp.tmp

all: book pdf epub bibliography

book: bibliography
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

pdf: bibliography
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"


epub: bibliography
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"



bibliography:
	cat *.Rmd > $(TEMPFILE)
	md2bib.py -f $(TEMPFILE) -o $(BIB_LOCAL) $(BIB_MASTER)
	touch $(BIB_LOCAL)

	rm -f business705.Rmd $(TEMPFILE)




.PHONY: book
