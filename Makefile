.PHONY: install

all: mediacrush.1.gz

mediacrush.1:
	a2x --doctype manpage --format manpage mediacrush.1.txt

mediacrush.1.gz: mediacrush.1
	cat mediacrush.1 | gzip > mediacrush.1.gz

install: mediacrush.1
	install -c -m 775 mediacrush /usr/bin/mediacrush
	install -m 644 mediacrush.1.gz /usr/share/man/man1/mediacrush.1

uninstall:
	rm /usr/bin/mediacrush
	rm /usr/share/man/man1/mediacrush.1
