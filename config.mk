# st version
VERSION = 0.9

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/include/X11
X11LIB = /usr/lib/X11

PKG_CONFIG = pkg-config

# includes and libs
INCS = -I$(X11INC) \
       `$(PKG_CONFIG) --cflags fontconfig` \
       `$(PKG_CONFIG) --cflags freetype2` \
       `$(PKG_CONFIG) --cflags harfbuzz`
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft -lXrender\
       `$(PKG_CONFIG) --libs fontconfig` \
       `$(PKG_CONFIG) --libs freetype2` \
       `$(PKG_CONFIG) --libs harfbuzz`

# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
STCFLAGS   = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) -Ofast -march=native -fomit-frame-pointer -fno-common -fopenmp -flto=auto -fgraphite-identity -floop-nest-optimize -ftree-loop-distribution -floop-parallelize-all -ftree-parallelize-loops=2 -fdevirtualize-at-ltrans
STLDFLAGS  = $(LIBS) $(LDFLAGS) -Wl,-Ofast,--sort-common,--as-needed,--strip-all,--hash-style=gnu,-lmimalloc -march=native -fopenmp

# OpenBSD:
#CPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -D_BSD_SOURCE
#LIBS = -L$(X11LIB) -lm -lX11 -lutil -lXft \
#       `$(PKG_CONFIG) --libs fontconfig` \
#       `$(PKG_CONFIG) --libs freetype2`
#MANPREFIX = ${PREFIX}/man

# compiler and linker
CC = cc
