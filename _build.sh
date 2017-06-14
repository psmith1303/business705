#!/bin/sh

BIB_MASTER=/home/psmith/NAS/Work/Research/Citations/bibs/psmithLibrary.bib
BIB_LOCAL=book.bib
TEMPFILE=temp.tmp
#
# Make the bibliography
#
cat *.Rmd > $TEMPFILE
md2bib.py -f $TEMPFILE -o $BIB_LOCAL $BIB_MASTER
touch $BIB_LOCAL

rm -f business705.Rmd $TEMPFILE

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
