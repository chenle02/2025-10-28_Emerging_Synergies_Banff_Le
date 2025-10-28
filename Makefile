# Makefile for building the Banff talk slides

MAIN := Talk-LeChen-Banff_20251028
PDF  := $(MAIN).pdf
LATEXMK := latexmk

# Add -shell-escape by running: make SHELL_ESCAPE=1
LATEXMK_OPTS ?= -pdf -interaction=nonstopmode
ifeq ($(SHELL_ESCAPE),1)
  LATEXMK_OPTS += -shell-escape
endif

.PHONY: all pdf watch fast biber clean cleanall open sync help

all: pdf

pdf: $(PDF)

$(PDF): $(MAIN).tex
	$(LATEXMK) $(LATEXMK_OPTS) $(MAIN).tex

watch:
	$(LATEXMK) -pvc $(LATEXMK_OPTS) $(MAIN).tex

# Continue despite missing refs/images (useful during drafting)
fast:
	$(LATEXMK) -f $(LATEXMK_OPTS) $(MAIN).tex

biber:
	biber $(MAIN)

clean:
	$(LATEXMK) -c

cleanall:
	$(LATEXMK) -CA

open: $(PDF)
	@{ xdg-open $(PDF) || open $(PDF) || start $(PDF) ; } >/dev/null 2>&1 || true

sync:
	git pull --rebase

help:
	@echo "Targets: pdf, watch, fast, biber, clean, cleanall, open, sync"
	@echo "Variables: SHELL_ESCAPE=1 to enable -shell-escape"

