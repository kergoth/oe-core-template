PATH=$PWD/oe-core/scripts:$PWD/bitbake/bin:$PATH
export PATH

# Used by poky-qemu, scripts/bitbake
export BUILDDIR=$PWD

export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE MACHINE"

if [ -e setup.sh.$HOSTNAME ]; then
    . ./setup.sh.$HOSTNAME
fi
