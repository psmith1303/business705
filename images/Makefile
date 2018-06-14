#
# Convert the SVG files to PDFs
#

SVGFILES := $(wildcard *.svg)

all: $(SVGFILES:%.svg=%.pdf)

%.pdf : %.svg
	inkscape --export-pdf $*.pdf $*.svg

