.PHONY: all run
CC=clang
CPP:=clang++
AR=ar
RANLIB=ranlib
LD := clang++
CFLAGS= -g -Wall
C11FLAGS= -g -Wall -std=c++11
SRCDIR := ./src
OBJDIR := ./obj
BINDIR := ./bin
INCLUDEDIR = -I./include -I.
DEPS=
LIBS=-lm
DEFINES:= 
PROGRAMS = sort_demo
BINFILES=$(PROGRAMS:%=$(BINDIR)/%)

all: $(BINFILES)

$(BINDIR)/sort_demo: $(SRCDIR)/sort_demo.cpp
	mkdir -p $(@D)
	$(CPP) $(CFLAGS) -o $@ $^ $(INCLUDEDIR) $(LIBS)

clean :
	rm -rf $(BINDIR) $(OBJDIR)
