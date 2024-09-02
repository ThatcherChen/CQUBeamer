SRCS:=slide.tex

all: beamer

beamer:
	latexmk -xelatex $(SRCS)

clean:
	for f in $(SRCS); do \
		latexmk -C $$f; \
	done

.PHONY: all beamer clean
