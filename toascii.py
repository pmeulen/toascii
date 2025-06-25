#!/usr/bin/env python

import sys
from unidecode import unidecode

def main():
    # Read from stdin
    for line in sys.stdin:
        # Filter and write to stdout
        filtered = unidecode(line)
        sys.stdout.write(filtered)

if __name__ == "__main__":
    main()