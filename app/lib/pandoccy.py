# python module
"""A place where flexible report helpers will go."""

import sys
import os
import contextlib


VERBOSE = os.getenv("PANDOCCY_VERBOSE") not in [None, "", "0", "false", "False", "FALSE"]
QUIET = os.getenv("PANDOCCY_QUIET") not in [None, "", "0", "false", "False", "FALSE"]


def message(msg, *args):
    if not QUIET:
        print(msg % args, file=sys.stderr)


def verbose(msg, *args):
    if VERBOSE:
        print("#", msg % args, file=sys.stderr)


@contextlib.contextmanager
def redirect_stdout(fout):
    """assign stdout=fout and make sure its assigned back in the end."""
    _stdout = sys.stdout
    try:
        sys.stdout = fout  # redirect
        yield
    finally:
        sys.stdout = _stdout

