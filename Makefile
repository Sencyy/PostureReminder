##
# RayFractal
#
# @file
# @version 0.1

builddir := build
execfile := PostureReminder

run: compile
	$(builddir)/$(execfile)

build:
	meson setup $(builddir)

compile: build
	CC=gcc CC_LD=mold meson compile -C $(builddir)

# end
