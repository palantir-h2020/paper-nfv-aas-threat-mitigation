MKDIR = mkdir -p
GNUPLOT = gnuplot

.PHONY: all install

all: install

install: figures figures/01-instantiation.png figures/02-reinstantiation.png figures/03-configuration.png

figures:
	$(MKDIR) $@

figures/01-instantiation.png: scripts/01-instantiation.gnu datasets/01-instantiation.csv
	$(GNUPLOT) $<

figures/02-reinstantiation.png: scripts/02-reinstantiation.gnu datasets/02-reinstantiation.csv
	$(GNUPLOT) $<

figures/03-configuration.png: scripts/03-configuration.gnu datasets/03-configuration.csv
	$(GNUPLOT) $<

%.png: %/%.gnu %/%.csv
	$(GNUPLOT) $<
