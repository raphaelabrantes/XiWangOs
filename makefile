GGC_VERSION:=gcc-13.2.0
BINUTILS_VERSION:=binutils-2.41


install_tools: build_tools
	mkdir -p src/binutils
	mkdir -p src/gcc
	./setup_tools.sh

build_tools: $(GGC_VERSION).tar.gz $(BINUTILS_VERSION).tar.gz
	mkdir -p build_tools
	tar -xvf $(BINUTILS_VERSION).tar.gz -C build_tools/
	tar -xvf $(GGC_VERSION).tar.gz -C build_tools/
	mkdir -p opt/cross


$(BINUTILS_VERSION).tar.gz:
	curl https://ftp.gnu.org/gnu/binutils/$(BINUTILS_VERSION).tar.gz -o $(BINUTILS_VERSION).tar.gz

$(GGC_VERSION).tar.gz:
	curl https://ftp.gnu.org/gnu/gcc/$(GGC_VERSION)/$(GGC_VERSION).tar.gz -o $(GGC_VERSION).tar.gz

