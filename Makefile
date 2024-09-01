SRCS:=slide.tex

all: beamer

beamer:
	latexmk -xelatex -pdf $(SRCS)

clean:
	for f in $(SRCS); do \
		latexmk -C $$f; \
	done

.PHONY: all beamer clean
