package=polyseed
# Same commit as the src/third-party/polyseed submodule: v2.0.0 predates POLYSEED_WOWNERO.
$(package)_version=11dc7e8a70d6be0570fdf5487e9b5d10d37f6071
$(package)_download_path=https://github.com/tevador/$(package)/archive/
$(package)_download_file=$($(package)_version).tar.gz
$(package)_file_name=$(package)-$($(package)_version).tar.gz
$(package)_sha256_hash=886d2ca7d51a657eefb719195e537fa1f85551319d52731cbf29ca5c2206daac
$(package)_patches=force-static-mingw.patch

define $(package)_preprocess_cmds
    patch -p1 < $($(package)_patch_dir)/force-static-mingw.patch
endef

define $(package)_config_cmds
    $($(package)_cmake) -DCMAKE_INSTALL_PREFIX=$(host_prefix) -DCMAKE_C_COMPILER= .
endef

define $(package)_build_cmds
    $(MAKE)
endef

define $(package)_stage_cmds
    $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
