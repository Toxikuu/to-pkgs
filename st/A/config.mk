# st version
VERSION = 0.9.2-tox

# paths
PREFIX = /usr
MANPREFIX = $(PREFIX)/share/man
ICONPREFIX = $(PREFIX)/share/pixmaps
ICONNAME = st.png

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

PKG_CONFIG = pkgconf

# includes and libs, uncomment harfbuzz for the ligatures patch
INCS = -I$(X11INC) \
       `$(PKG_CONFIG) --cflags fontconfig` \
       `$(PKG_CONFIG) --cflags freetype2` \
       $(LIGATURES_INC)
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft ${SIXEL_LIBS} ${XRENDER} ${XCURSOR}\
       `$(PKG_CONFIG) --libs fontconfig` \
       `$(PKG_CONFIG) --libs freetype2` \
       $(LIGATURES_LIBS) \
       $(NETWMICON_LIBS)

# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -DICON=\"$(ICONPREFIX)/$(ICONNAME)\" -D_XOPEN_SOURCE=600
STCFLAGS = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) $(CFLAGS)
STLDFLAGS = $(LIBS) $(LDFLAGS)

# compiler and linker
CC = gcc -std=c99 -pedantic
