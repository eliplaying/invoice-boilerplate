# get command line variables
$file_md = $args[0]
$number = ''
$number = $args[1]


# this defines the name of the generated pdf file, it numbers by current date and then adds "01", 
#if the second command line argument is used, it uses the number supplied; 
#you need to write "02" for it to append 02, if you write 02 without quotes, it will append just "2".

# get date
$todaysdate = Get-Date -Format yyyyMMdd

# Define output name. Rechnung is german for invoice
If($number){
    $output = "Rechnung_" + $todaysdate + $number + ".pdf"
} else {
    $output = "Rechnung_" + $todaysdate + "01.pdf"  
}

# change the path to wherever the template folder is lying on your computer
$path_template_folder = "C:\Users\blade\Desktop\new_invoice_external\invoice-boilerplate\"
$file_yaml = "invoice.yaml"
$file_lua = "autodate.lua"
$file_tex_template = "template.tex"
$file_letterhead = "letterhead.pdf"

# path variables
$path_yaml = $path_template_folder + $file_yaml
$path_lua = $path_template_folder + $file_lua
$path_tex_template = $path_template_folder + $file_tex_template
$path_letterhead = $path_template_folder + $file_letterhead

$path_current = (Get-Item -Path ".\").FullName + "\"

# pandoc settings with file names
$pandoc_tex_template = "--template=" + $file_tex_template
$pandoc_yaml = "--metadata-file=" + $file_yaml
$pandoc_lua = "--lua-filter=" + $file_lua


Copy-Item -path $path_yaml -Destination $path_current
Copy-Item -path $path_lua -Destination $path_current
Copy-Item -path $path_tex_template -Destination $path_current
Copy-Item -path $path_letterhead -Destination $path_current

pandoc $file_md -f markdown -t pdf -o $output $pandoc_tex_template $pandoc_lua $pandoc_yaml --pdf-engine=xelatex

Remove-Item $file_yaml
Remove-Item $file_lua
Remove-Item $file_tex_template
Remove-Item $file_letterhead
