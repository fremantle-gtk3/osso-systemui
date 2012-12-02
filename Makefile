SRC = ./
DESTDIR =
INCLUDEDIR = $(DESTDIR)/usr/include/systemui
PKGCONFIGDIR = $(DESTDIR)/usr/lib/pkgconfig

INSTALL = install
INSTALL_PROGRAM = $(INSTALL)

INSTALL_INCLUDES = systemui.h
INSTALL_PKGCONFIG = osso-systemui.pc

all:

install:
	$(INSTALL_PROGRAM) -d $(INCLUDEDIR)
	$(INSTALL_PROGRAM) -m644 $(INSTALL_INCLUDES) $(INCLUDEDIR)
	$(INSTALL_PROGRAM) -d $(PKGCONFIGDIR)
	$(INSTALL_PROGRAM) -m644 $(INSTALL_PKGCONFIG) $(PKGCONFIGDIR)

clean:
	$(RM) *~