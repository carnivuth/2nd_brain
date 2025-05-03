.DEFAULT_GOAL=build
.PHONY: build clean

BUILDDIR=./build

clean:
	rm -rf $(BUILDDIR)

setup: clean
	mkdir -p $(BUILDDIR)
	git clone https://github.com/jackyzha0/quartz $(BUILDDIR)
	cd $(BUILDDIR); \
	npm install; \
	npx quartz create -X new -l absolute
	cp quartz.config.ts $(BUILDDIR)
	cp quartz.layout.ts $(BUILDDIR)
	cp -r canvases assets pages  $(BUILDDIR)/content/
	cp index.md readme.md  $(BUILDDIR)/content/

build: clean setup
	cd $(BUILDDIR); \
	npx quartz build

serve: setup
	cd $(BUILDDIR); \
	npx quartz build --serve
