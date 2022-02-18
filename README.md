# Hello dapptools

-   install
-   `dapp build`
-   `dapp test`
-   install openzeppelin
-   test array by fuzzing

# Install

```shell
# clone this repo, including submodules
git clone --recursive git@github.com:t4sk/hello-dapptools.git
npm i
dapp build
```

# Dapp commands

```shell
dapp init
dapp build
# fuzz
dapp test --fuzz-runs 1000
# test specific
dapp test -m name_of_test
# test ffi
dapp test -m test_ffi --ffi
# invariant test
dapp test -m invariant_totalSupply --fuzz-runs 500 --depth 10
```
