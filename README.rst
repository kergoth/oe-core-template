Summary
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

1. ``git clone --recursive https://github.com/kergoth/oe-core-template``
2. ``cd oe-core-template``
3. ``make`` *or* ``. ./setup.sh; bitbake core-image-minimal``

To update to the latest versions of the layers, run ``make update``.

Notes
-----

For the user new to oe-core, certain changes in behavior should be noted.

During a build, you may notice a message about "psuedo" being unavailable, and
it building this. Pseudo is a fakeroot-like project which is used by oe-core
to resolve permissions issues with do_install and packaging. In the new world,
the entire bitbake build runs underneith pseudo, and it gets enabled via
environment variables when spawning our tasks. The aforementioned message is
an indication that the bootstrap process is happening. Bitbake is being used
to build pseudo-native, so it can be used to run subsequent bitbake
executions.

Next, it's worth noting, though it may not have any practical impact on usage,
that oe-core uses the 'fetch2' bitbake module, which is an in progress rework
of bb.fetch.

For those working on recipes, it is further worth noting that licenses are
more tightly checked and controlled. All recipes must have LICENSE set, and
you will be warned if no license files are referred to, for the license
'checksumming' (it warns you if the upstream license changes).

I would strongly advise reading the Poky Handbook, as the poky repository
became oe-core - http://www.pokylinux.org/doc/poky-handbook.html.
