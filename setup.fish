set PATH $PWD/meta-mentor/scripts $PWD/poky/scripts $PWD/poky/bitbake/bin $PATH

# Used by poky-qemu, scripts/bitbake
set -x BUILDDIR $PWD

set -x BB_ENV_EXTRAWHITE "$BB_ENV_EXTRAWHITE DISTRO MACHINE"

if test -e setup.fish.$HOSTNAME
    . ./setup.fish.$HOSTNAME
end
