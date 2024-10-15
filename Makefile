all: mkdir_lib libserver.a copy_libserver.a clean_dlls libclient.a copy_libclient.a clean_cl_dll

mkdir_lib:
	@mkdir -p $(CURDIR)/lib

libserver.a:
	$(MAKE) -C $(CURDIR)/dlls

libclient.a:
	$(MAKE) -C $(CURDIR)/cl_dll

copy_libserver.a:
	@cp $(CURDIR)/dlls/libserver.a lib/

copy_libclient.a:
	@cp $(CURDIR)/cl_dll/libclient.a $(CURDIR)/lib/

clean_dlls:
	$(MAKE) -C $(CURDIR)/dlls clean

clean_cl_dll:
	$(MAKE) -C $(CURDIR)/cl_dll clean

clean: clean_dlls clean_cl_dll
	@rm -fr $(CURDIR)/lib/libserver.a $(CURDIR)/lib/libclient.a