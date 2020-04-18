EXTENSION_UUID = gtg@jorgeecardona.github.io

# Directory to collect all sourc file to in order to build.
BUILDDIR = build
# Directory to save a 'ready to deploy extension' archive
DISTDIR = dist

clean: clean-build
	rm -f dist/*

clean-build:
	rm -fr build

$(BUILDDIR):
	mkdir -p $@

collect: $(BUILDDIR)
	cp -R extension/* $(BUILDDIR)
	cp -R data/* $(BUILDDIR)

compile: collect
	glib-compile-schemas $(BUILDDIR)/schemas
	find $(BUILDDIR) -name \*.po -execdir msgfmt gtg-shell-extension.po -o gtg-shell-extension.mo \;


dist: compile
# We need to do this like this as 'zip' always uses the cwd as archive root.
# And for the extension to work extension.js etc. need to be at the root.
	mkdir -p $(DISTDIR);
	cd $(BUILDDIR); zip -rq ../dist/$(EXTENSION_UUID).zip ./*
	cd $(BUILDDIR); tar -czf ../dist/$(EXTENSION_UUID).tar.gz *
	@ls -l dist

uninstall:
	rm -rf ~/.local/share/gnome-shell/extensions/gtg@jorgeecardona.github.io

install:
	mkdir -p ~/.local/share/gnome-shell/extensions/$(EXTENSION_UUID)
	tar xfz dist/$(EXTENSION_UUID).tar.gz -C ~/.local/share/gnome-shell/extensions/$(EXTENSION_UUID)
