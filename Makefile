.PHONY: install

PREFIX := /usr

all: mediacrush.1.gz

mediacrush.1:
	a2x --doctype manpage --format manpage mediacrush.1.txt

mediacrush.1.gz: mediacrush.1
	cat mediacrush.1 | gzip > mediacrush.1.gz

install: mediacrush.1
	install -c -m 775 mediacrush $(PREFIX)/bin/mediacrush
	install -m 644 mediacrush.1.gz $(PREFIX)/share/man/man1/mediacrush.1

uninstall:
	rm $(PREFIX)/bin/mediacrush
	rm $(PREFIX)/share/man/man1/mediacrush.1
