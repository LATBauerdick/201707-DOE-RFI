TEX = pandoc
src = template.tex r[0-9].md
FLAGS = --filter=pandoc-fignos --latex-engine=xelatex

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm output.pdf
