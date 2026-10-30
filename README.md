# homebrew-golden-census

The Homebrew tap for [golden-census](https://github.com/bunkanoyume/golden-census), a characterization harness that records a program's observable output as a golden and compares it byte for byte after a change.

## Install

```sh
brew install bunkanoyume/golden-census/golden-census
```

Homebrew adds the tap and builds the formula from the release tarball. Afterwards `brew upgrade` picks up new releases.

## Contents

- `Formula/golden-census.rb`: the formula. Its `url` names a release tag of golden-census and its `sha256` is that tarball's checksum.

## License

The formula is released under the MIT License, the same license as golden-census.
