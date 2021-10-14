![OpenWrt logo](include/logo.png)

OpenWrt Project is a Linux operating system targeting embedded devices. Instead
of trying to create a single, static firmware, OpenWrt provides a fully
writable filesystem with package management. This frees you from the
application selection and configuration provided by the vendor and allows you
to customize the device through the use of packages to suit any application.
For developers, OpenWrt is the framework to build an application without having
to build a complete firmware around it; for users this means the ability for
full customization, to use the device in ways never envisioned.

Sunshine!

## Development

To build your own firmware you need a GNU/Linux, BSD or MacOSX system (case
sensitive filesystem required). Cygwin is unsupported because of the lack of a
case sensitive file system.

### Requirements

You need the following tools to compile OpenWrt, the package names vary between
distributions. A complete list with distribution specific packages is found in
the [Build System Setup](https://openwrt.org/docs/guide-developer/build-system/install-buildsystem)
documentation.

```
gcc binutils bzip2 flex python3 perl make find grep diff unzip gawk getopt
subversion libz-dev libc-dev rsync which
```

### Quickstart

1. Run `./scripts/feeds update ` to obtain all the latest package definitions
   defined in feeds.conf / feeds.conf.default

2. Run `./scripts/feeds install -a` to install symlinks for all obtained

	./scripts/feeds install -a -f -p ipq807x
	./scripts/feeds install -a -f -p wifi_ax
	./scripts/feeds install -a -f -p ucentral
	./scripts/feeds install -a -f -p tip
	./scripts/feeds install -a -f -p luci
	./scripts/feeds install -a -f -p openflow
	./scripts/feeds install -a -f -p facebook
	./scripts/feeds install -a -f -p third_party
3. cp configs/dr6018.config .config

4. make V=99

   

