PATH=$PWD/meta-mentor/scripts:$PWD/poky/scripts:$PWD/poky/bitbake/bin:$PATH
export PATH

# Used by poky-qemu, scripts/bitbake
export BUILDDIR=$PWD

export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE MACHINE"

if [ -e setup.sh.$HOSTNAME ]; then
    . ./setup.sh.$HOSTNAME
fi
