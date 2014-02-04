.PHONY: install

DESTDIR := /usr

all: mediacrush.1.gz

mediacrush.1:
	a2x --doctype manpage --format manpage mediacrush.1.txt

mediacrush.1.gz: mediacrush.1
	cat mediacrush.1 | gzip > mediacrush.1.gz

install: mediacrush.1
	mkdir -p $(DESTDIR)/bin/
	mkdir -p $(DESTDIR)/share/man/man1/
	install -c -m 775 mediacrush $(DESTDIR)/bin/mediacrush
	install -m 644 mediacrush.1.gz $(DESTDIR)/share/man/man1/mediacrush.1

uninstall:
	rm $(DESTDIR)/bin/mediacrush
	rm $(DESTDIR)/share/man/man1/mediacrush.1
