m ?= regular update

DOCS = $(basename $(shell find . -name "*.jemdoc")) 
COMPILER = jemdoc.py
CONF= mysite.conf

HDOCS=$(addsuffix .html, $(DOCS))


.PHONY: all
all : $(HDOCS)

%.html: %.jemdoc
	python $(COMPILER) -c $(CONF) -o $@ $<

.PHONY: upload
upload:
	git add .
	git commit -m "$(m)"
	git push -u origin master

.PHONY: clean
clean:
	-rm -f $(HDOCS)
