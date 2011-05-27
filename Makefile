# Makefile provided as a convenience wrapper around setup.sh and bitbake

defaulttarget=core-image-minimal

define bitbake
. ./setup.sh && bitbake $1 $2 $3 $4
endef

$(defaulttarget):

help:
	@echo >&2 "Note: Default target is $(defaulttarget)"
	@echo >&2
	@echo >&2 "Usage: make [TARGET]"
	@echo >&2 "       make clean-TARGET"
	@echo >&2 "       make clean"
	@echo >&2 "       make clean-sstate"
	@echo >&2 "       make graph-TARGET"
	@echo >72 "         Generate dependency graphs for TARGET

clean-sstate:
	@echo Cleaning sstate files...
	@-rm -rf sstate-cache

clean:
	@echo Cleaning build directory...
	@-rm -rf build/*

graph-%:
	@echo Graphing $*...
	@$(call bitbake,-g,$*)

clean-%:
	@echo Cleaning $*...
	@$(call bitbake,-c clean,$*)

%:
	@echo Building $*...
	@$(call bitbake,$*)
