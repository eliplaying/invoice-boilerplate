#!/bin/bash
TODAYSDATE=$(date +%Y%m%d)
OUTPUT="Rechnung_$TODAYSDATE.pdf"
# 
# s
pandoc _template.md -f markdown -t pdf -o $OUTPUT --template=template.tex --pdf-engine=xelatex --metadata-file=invoice.yaml --lua-filter=autodate.lua