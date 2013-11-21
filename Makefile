PREFIX?=/usr/local
DESTDIR?=$(PREFIX)
BINDIR?=$(PREFIX)/$(DESTDIR)/bin
MANDIR?=$(PREFIX)/$(DESTDIR)/share/man/man1

docgen?=a2x

all: info

info:
	$(docgen) --doctype manpage --format manpage mediacrush.1.txt

clean:
	rm mediacrush.1

install:
	install -Dm755 mediacrush $(BINDIR)/mediacrush
	install -Dm644 mediacrush.1 $(MANDIR)/mediacrush.1

uninstall:
	rm $(BINDIR)/mediacrush
	rm -f $(MANDIR)/mediacrush.1
