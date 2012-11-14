#! /usr/bin/env python

# TODO: License goes here

# TODO: Description goes here

import sys
from optparse import OptionParser


def main():
    """
    main:  Main function in cli processing.  sys.stdin will be used
            as a file object.  
    """
  
    usage = "Usage: %prog [options]"
    parser = OptionParser(usage=usage)
    parser.add_option("-c", "--column", dest="col", type="int",
            help="Column to print", default=0)
    options, args = parser.parse_args()
    if not options.col:
        parser.error("Must have a colume value")
    col = options.col

    for line in sys.stdin.readlines():
        line = line.strip()

        # Do somthing with line
        data = line.split(' ')
        if len(data) >= col:
            print data[col - 1]


if __name__ == '__main__':
    sys.exit(main())
