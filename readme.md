# toascii

Convert text with unicode characters to their (approximate)
ASCII equivalent.

This is just a small wrapper around the [unidecode](https://pypi.org/project/Unidecode/) library
that reads Unicode input from stdin and outputs the ASCII equivalent to stdout.

# Installation and Usage

## Using pip

Requires python 3.x 
Install dependencies using pip:

`pip install -r requirements.txt`

Usage: `python toascii.py < input.txt > output.txt`

## Self contained executable

Get the prebuild executable for your platform from the repo, if it exists.  

Usage: `toascii < input.txt > output.txt`

# Building

Run `build.sh` to build a selfcontained version for your platform.

Requires `pyinstaller`. Install it it using e.g.:
`pip install pyinstaller`
