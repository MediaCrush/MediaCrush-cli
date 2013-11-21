PREFIX?=/usr
DESTDIR?=$(PREFIX)
BINDIR?=$(DESTDIR)/bin
MANDIR?=$(DESTDIR)/share/man/man1

docgen?=a2x

all: info

info:
	$(docgen) --doctype manpage --format manpage mediacrush.1.txt

clean:
	rm mediacrush.1

install:
	install -Dm755 mediacrush $(BINDIR)/mediacrush
	install -Dm644 mediacrush.1 $(MANDIR)/mediacrush.1
	gzip -9 "$(MANDIR)/mediacrush.1"

uninstall:
	rm $(BINDIR)/mediacrush
	rm -f $(MANDIR)/mediacrush.1.gz
