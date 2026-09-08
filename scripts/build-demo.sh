#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error demo/03_figures_and_diagrams/workflow.tex
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error demo/02_latex_source/main.tex
cp demo/02_latex_source/main.pdf demo-thesis.pdf
