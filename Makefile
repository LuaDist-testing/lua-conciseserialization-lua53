
LUA     := lua
VERSION := $(shell cd src && $(LUA) -e "m = require [[CBOR]]; print(m._VERSION)")
TARBALL := lua-conciseserialization-$(VERSION).tar.gz
REV     := 1

LUAVER  := 5.2
PREFIX  := /usr/local
DPREFIX := $(DESTDIR)$(PREFIX)
LIBDIR  := $(DPREFIX)/share/lua/$(LUAVER)
INSTALL := install

ifeq ($(LUAVER),5.3)
SRC     := src5.3
else
SRC     := src
endif

all:
	@echo "Nothing to build here, you can just make install"

install:
	$(INSTALL) -m 644 -D $(SRC)/CBOR.lua            $(LIBDIR)/CBOR.lua

uninstall:
	rm -f $(LIBDIR)/CBOR.lua

manifest_pl := \
use strict; \
use warnings; \
my @files = qw{ \
    MANIFEST \
    test/test-vectors/README.md \
    test/test-vectors/appendix_a.json \
}; \
while (<>) { \
    chomp; \
    next if m{^\.}; \
    next if m{^debian/}; \
    next if m{^rockspec/}; \
    next if m{^test/test-vectors$$}; \
    push @files, $$_; \
} \
print join qq{\n}, sort @files;

rockspec_pl := \
use strict; \
use warnings; \
use Digest::MD5; \
open my $$FH, q{<}, q{$(TARBALL)} \
    or die qq{Cannot open $(TARBALL) ($$!)}; \
binmode $$FH; \
my %config = ( \
    version => q{$(VERSION)}, \
    rev     => q{$(REV)}, \
    md5     => Digest::MD5->new->addfile($$FH)->hexdigest(), \
); \
close $$FH; \
while (<>) { \
    s{@(\w+)@}{$$config{$$1}}g; \
    print; \
}

version:
	@echo $(VERSION)

CHANGES:
	perl -i.bak -pe "s{^$(VERSION).*}{q{$(VERSION)  }.localtime()}e" CHANGES

tag:
	git tag -a -m 'tag release $(VERSION)' $(VERSION)

MANIFEST:
	git ls-files | perl -e '$(manifest_pl)' > MANIFEST

$(TARBALL): MANIFEST
	[ -d lua-ConciseSerialization-$(VERSION) ] || ln -s . lua-ConciseSerialization-$(VERSION)
	perl -ne 'print qq{lua-ConciseSerialization-$(VERSION)/$$_};' MANIFEST | \
	    tar -zc -T - -f $(TARBALL)
	rm lua-ConciseSerialization-$(VERSION)

dist: $(TARBALL)

rockspec: $(TARBALL)
	perl -e '$(rockspec_pl)' rockspec.in > rockspec/lua-conciseserialization-$(VERSION)-$(REV).rockspec
	perl -e '$(rockspec_pl)' rockspec.lua53.in > rockspec/lua-conciseserialization-lua53-$(VERSION)-$(REV).rockspec

rock:
	luarocks pack rockspec/lua-conciseserialization-$(VERSION)-$(REV).rockspec
	luarocks pack rockspec/lua-conciseserialization-lua53-$(VERSION)-$(REV).rockspec

deb:
	echo "lua-conciseserialization ($(shell git describe --dirty)) unstable; urgency=medium" >  debian/changelog
	echo ""                         >> debian/changelog
	echo "  * UNRELEASED"           >> debian/changelog
	echo ""                         >> debian/changelog
	echo " -- $(shell git config --get user.name) <$(shell git config --get user.email)>  $(shell date -R)" >> debian/changelog
	fakeroot debian/rules clean binary

check: test

test/test-vectors/appendix_a.json:
	git submodule update --init

test/appendix_a.lua: test/test-vectors/appendix_a.json
	json2lua -r -w200 < $< > $@

test/appendix_a.32bits.lua: test/test-vectors/appendix_a.json
	json2lua -r -w200 < $< > $@

test:
	cd $(SRC) && prove --exec=$(LUA) ../test/*.t

luacheck:
	luacheck --std=max --codes src --ignore 211/_ENV 212 311/j
	luacheck --std=max --codes src5.3 --ignore 211/_ENV 212 311/j
	luacheck --std=max --config .test.luacheckrc test/*.t

coverage:
	rm -f src/luacov.stats.out src/luacov.report.out
	cd $(SRC) && prove --exec="$(LUA) -lluacov" ../test/*.t
	cd $(SRC) && luacov

coveralls:
	rm -f src/luacov.stats.out src/luacov.report.out
	cd $(SRC) && prove --exec="$(LUA) -lluacov" ../test/*.t
	cd $(SRC) && luacov-coveralls -e /HERE/ -e %.t$

README.html: README.md
	Markdown.pl README.md > README.html

gh-pages:
	mkdocs gh-deploy --clean

clean:
	rm -f MANIFEST *.bak src/luacov.*.out README.html

realclean: clean

.PHONY: test rockspec deb CHANGES

