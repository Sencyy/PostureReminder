##
# RayFractal
#
# @file
# @version 0.1

builddir := build
execfile := PostureReminder

run: compile
	./$(execfile)

build:
	meson setup $(builddir)

compile: build
	CC=gcc CC_LD=mold meson compile -C $(builddir)
	cp $(builddir)/$(execfile) .

# end
