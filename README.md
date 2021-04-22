# mastering_ethereum  
This is a repository for Mastering Ethereum which is publisher by oreilly.

# Set up
Install solidity compiler. 
## Remix
For beginner, I recommend [Remix](https://remix.ethereum.org/). Remix is IDE on the browser. Easy to start. Easy to run.

## npm / Node.js
run following command.
```zsh
$ npm install -g solc
```


## Docker
```zsh
$ docker run ethereum/solc:stable --version
```

## Binary Packages(macOS)
```
$ brew update
$ brew upgrade
$ brew tap ethereum/ethereum
$ brew install solidity
```

# Compile
```zsh
$ solc --help
$ solc --bin sorceFile.sol
```

# Reference
[solidity-jp](https://solidity-jp.readthedocs.io/ja/latest/installing-solidity.html)