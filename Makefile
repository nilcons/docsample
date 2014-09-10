all: sample.pdf

%.pdf: %.md
	pandoc -f markdown  -V geometry:margin=2cm,paper=a4paper -o sample.html sample.md
