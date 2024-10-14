all: libserver.a libclient.a
	@mkdir -p lib
	@mv cl_dll/libclient.a lib/
	@mv dlls/libserver.a lib/

libserver.a:
	$(MAKE) -C dlls

libclient.a:
	$(MAKE) -C cl_dll

clean:
	$(MAKE) -C cl_dll clean
	$(MAKE) -C dlls clean