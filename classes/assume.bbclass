def auto_assume_provided(d):
    try:
        oe_import(d)
    except NameError:
        import sys
        sys.path.insert(0, os.path.join(d.getVar('TOPDIR', True), 'lib'))

    import kergoth.assume as assume
    import kergoth.assumptions

    return ' '.join(assume.test_assumptions())

ASSUME_PROVIDED += "${@auto_assume_provided(d)}"
