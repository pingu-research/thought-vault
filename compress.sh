#!/bin/sh
pdf2ps $1 "${1}-tmp"
ps2pdf -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompressFonts=true -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -r72 -sOutputFile="${1}-tmp2" $1
rm "${1}-tmp"
mv "${1}-tmp2" $1
