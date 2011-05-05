Summary:
-------

This is a basic oe-core/meta-openembedded based setup, using my personal
preferences rather than the oe-core, angstrom, or shr setup scripts.

The main difference between how I like to do things versus the other scripts
is that I prefer my metadata to live in my 'project' areas, rather than only
holding configuration and build output there. This makes it much easier to do
invasive or risky metadata changes without impacting the other projects you're
working on, and I think is a good policy in general. Start separated and make
the propogation of one project's changes to other projects explicit.

Instructions
------------

1. ``git clone --recursive https://github.com/kergoth/oe-core-template angstrom``
2. ``cd oe-core-template``
3. ``. ./setup.sh``
4. ``bitbake console-image``
