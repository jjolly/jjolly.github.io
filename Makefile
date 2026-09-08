VERSION=$(shell jq -r .version package.json)
DATE=$(shell date +%F)
SRCDIR ?= markdown_src
HTMLDIR ?= pages

MD_FILES=$(wildcard $(SRCDIR)/**/*.md) $(wildcard $(SRCDIR)/*.md)
HTML_TARGETS=$(patsubst $(SRCDIR)/%.md,$(HTMLDIR)/%.html,$(filter-out $(SRCDIR)/index.md,$(MD_FILES)))

all: index.html $(HTML_TARGETS)

$(HTMLDIR)/%.html: $(SRCDIR)/%.md $(SRCDIR)/template.html Makefile convert-links.lua
	@mkdir -p $(@D)
	@CURRENT_FILE=$$(echo "$<" | sed 's|^$(SRCDIR)/||'); \
	SRCDIR=$(SRCDIR) HTMLDIR=$(HTMLDIR) PANDOC_CURRENT_FILE=$$CURRENT_FILE pandoc --toc -s --css src/reset.css --css src/index.css -Vversion=v$(VERSION) -Vdate=$(DATE) -i $< -o $@ --template=$(SRCDIR)/template.html --lua-filter=convert-links.lua

index.html: $(SRCDIR)/index.md $(SRCDIR)/template.html Makefile convert-links.lua
	SRCDIR=$(SRCDIR) HTMLDIR=$(HTMLDIR) PANDOC_CURRENT_FILE=index.md pandoc --toc -s --css src/reset.css --css src/index.css -Vversion=v$(VERSION) -Vdate=$(DATE) -i $< -o $@ --template=$(SRCDIR)/template.html --lua-filter=convert-links.lua

clean:
	rm -f index.html
	rm -rf $(HTMLDIR)

.PHONY: all clean
