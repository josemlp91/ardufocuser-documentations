#!/bin/bash

#Generación de PDF compilando el archivo LaTeX con pdflatex
cd text
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=../ project.tex
pdflatex -synctex=1 -interaction=nonstopmode -output-directory=../ project.tex
cd ..
rm {*.aux,*.lof,*.log,*.lol,*.lot,*.out,*.synctex.gz,*toc}
find . -name "*.aux"  -type f -delete
find . -name "*.lof"  -type f -delete
find . -name "*.log"  -type f -delete 
find . -name "*.lol"  -type f -delete
find . -name "*.lot"  -type f -delete
find . -name "*.out" -type f -delete
find . -name "*.synctex.gz" -type f -delete
find . -name "*.toc" -type f -delete

