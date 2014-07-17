include src/opus/opus_sources.mk
include src/opus/silk_sources.mk
include src/opus/celt_sources.mk


WARNINGS = -Wall -W -Wstrict-prototypes -Wextra -Wcast-align -Wnested-externs -Wshadow
CFLAGS  += -O2 -g $(WARNINGS) -Wcast-align -DOPUS_BUILD
CFLAGS += -Isrc/opus/celt -Isrc/opus/include -Isrc/opus/silk -Isrc/opus/silk/fixed -Isrc/opus/src
CFLAGS += -DFIXED_POINT=1 -DDISABLE_FLOAT_API -DUSE_ALLOCA
CFLAGS += -Drestrict=
CFLAGS += -DOPUS_VERSION='v1.1'

SRCS 	+= $(patsubst %,opus/%,$(OPUS_SOURCES))
SRCS 	+= $(patsubst %,opus/%,$(SILK_SOURCES))
SRCS 	+= $(patsubst %,opus/%,$(SILK_SOURCES_FIXED))
SRCS 	+= $(patsubst %,opus/%,$(CELT_SOURCES))
