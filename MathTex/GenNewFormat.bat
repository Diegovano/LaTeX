@echo off
pdflatex -ini -jobname="exerciseformat" -synctex=1 -interaction=nonstopmode --shell-escape "&pdflatex" mylatexformat.ltx """VariablesAleatoires.tex"""
pause