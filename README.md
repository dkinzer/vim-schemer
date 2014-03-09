schemer.vim
===
Evaluate mit-scheme expressions from within vim in the context of the scheme file.
Also conceals lambdas with  λ (requires that vim be compiled with --conceal-enabled).

##Installation
Install as a vim bundle with either pathogen or vundle.

## Requirements
* Linux/Unix
* mit-scheme

## Usage
`;s` is mapped to echo the evaluation when the cursor is placed inside a scheme form.
