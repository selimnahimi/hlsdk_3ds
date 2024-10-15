all: libserver.a libclient.a
	@mkdir -p lib
	@cp cl_dll/libclient.a lib/
	@cp dlls/libserver.a lib/

libserver.a:
	$(MAKE) -C dlls

libclient.a:
	$(MAKE) -C cl_dll

clean:
	$(MAKE) -C cl_dll clean
	$(MAKE) -C dlls clean