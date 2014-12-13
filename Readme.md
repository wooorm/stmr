# stmr([1](http://www.gsp.com/support/man/)) [![Build Status](https://img.shields.io/travis/wooorm/stmr.svg?style=flat)](https://travis-ci.org/wooorm/stmr) [![Coverage Status](https://img.shields.io/coveralls/wooorm/stmr.svg?style=flat)](https://coveralls.io/r/wooorm/stmr?branch=master)

Martin Porter’s Stemming algorithm<sup>[1](http://tartarus.org/martin/PorterStemmer/)</sup> as a UNIX command. There’s also a C library: [stmr(3)](https://github.com/wooorm/stmr.c).

## Installation

```
$ make install
```

CLib:
```
$ clib install wooorm/stmr
```

## Usage

```
  Usage: stmr [options] file

  Options:

    -h, --help           output usage information
    -v, --version        output version number
    -e, --eval string    output stemmed word

  Usage:

  # stem a word
  $ stmr -e nationalism
  # nation

  # print stems
  $ stmr in.txt

  # write stems to out.txt
  $ stmr in.txt > out.txt

  # stdin and stdout
  $ echo "Internationalise" | stmr
  # internationalis
```

## License

MIT © [Titus Wormer](http://wooorm.com)
