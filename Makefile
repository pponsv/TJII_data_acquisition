MODNAME = TJII_data_acquisition_f

all: meson_configure meson_build

meson_configure:
	meson setup --wipe bld

meson_build:
	meson compile -C bld
	cp bld/$(MODNAME).*.so ./

clean:
	rm -rf *.so ./bld/

test:
	python3 test.py