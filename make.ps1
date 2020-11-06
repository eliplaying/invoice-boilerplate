$todaysdate = Get-Date -Format yyyyMMdd
$output = $todaysdate + "_Rechnung.pdf"
pandoc _template.md -f markdown -t pdf -o $OUTPUT --template=template.tex --pdf-engine=xelatex --metadata-file=invoice.yaml --lua-filter=autodate.lua