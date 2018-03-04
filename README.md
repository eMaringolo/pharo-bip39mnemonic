# pharo-bip39mnemonic
Simple implementation of Bitcoin's BIP39 mnemonic and seed generator using the [reference implementation](https://github.com/trezor/python-mnemonic) as guide.

*Personal disclaimer*: This is a personal experimentation to learn by practice how the entropy, mnemonic, seeds, etc., works internally. It includes pasing tests taken from the reference implementation as well.

## Installation

Run:
```
Metacello new 
  baseline: 'BIP39Mnemonic'; 
  repository: 'github://eMaringolo/pharo-bip39mnemonic/src'; 
  load.
```

## Examples


### Creating a new one
```
| m |
"Creating a mnemonic from Pharo's weak PRNG" 
m := BIP39Mnemonic generate.

"Getting its mnemonic words"
m words. "#('argue' 'snap' 'this' 'common' 'cube' 'length'
            'abandon' 'abandon' 'abandon' 'abandon' 'abandon' 'ability')"

"Generating a seed with 
m seedForPassphrase: 'Pharo'.  "'154ad96ab7ad44d2c47beb3801e278b37b82fe9fc3...'"
```

### Instantiating from existing words
```
BIP39Mnemonic fromWords: 'legal winner thank year wave sausage worth useful legal winner thank yellow'.

BIP39Mnemonic fromWords:  "#('legal' 'winner' 'thank' 'year' 'wave' 'sausage' 
                             'worth' 'useful' 'legal' 'winner' 'thank' 'yellow')
 ```
 


