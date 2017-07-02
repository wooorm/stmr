# stmr(1) [![Build Status][travis-badge]][travis]

Martin Porter’s [Stemming algorithm][algo] as a C CLI.
There’s also an API: [stmr(3)][api].

## Installation

[clib][]:

```bash
clib install wooorm/stmr
```

Or clone the repo, then `make install`.

## Usage

```bash
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

## Related

*   [`stemmer`][lib] — Same algorithm in JavaScript
*   [`stmr`][api] — API in C

## License

[MIT][license] © [Titus Wormer][author]

<!-- Definitions -->

[travis-badge]: https://img.shields.io/travis/wooorm/stmr.svg

[travis]: https://travis-ci.org/wooorm/stmr

[license]: LICENSE

[author]: http://wooorm.com

[algo]: http://tartarus.org/martin/PorterStemmer/

[api]: https://github.com/wooorm/stmr.c

[lib]: https://github.com/wooorm/stemmer

[clib]: https://github.com/clibs/clib
