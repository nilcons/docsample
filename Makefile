all: sample.pdf

%.pdf: %.md
	pandoc -f markdown -t latex -V geometry:margin=2cm,paper=a4paper -o $@ $<
