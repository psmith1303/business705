#
# Convert the SVG files to PDFs
#

SVGFILES := $(wildcard *.svg)

all: $(SVGFILES:%.svg=%.png)

%.png : %.svg
	inkscape --export-png $*.png $*.svg

