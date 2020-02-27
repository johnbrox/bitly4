## Aim

The v3 API will cease to function from 1 Mar 2020 so we need to use v4.

## Requirements

- A Linux computer (not a Raspberry Pi - installing Py3.7 was going to be too much effort)
- A bit.ly account (get a free one from dev.bitly.com)
- An access token from the above
- Python 3.7 (I'm using a conda environment)
- bitlyshortener python module

## Installation

- Get Miniconda from https://docs.conda.io/en/latest/miniconda.html
- Install miniconda3

```bash
bash Miniconda3-latest-Linux-x86_64.sh
```

Initialise conda

```bash
eval "$(${HOME}/miniconda3/bin/conda shell.bash hook)"
```

Create an environment for bitly4

```bash
conda create -n bitly4 -y python=3.7
```

Activate it

```bash
conda activate bitly4
```

Install the bitlyshortener in this environment

```bash
pip install bitlyshortener
```

Get auth_token from bit.ly and add this to bitly4.py to replace "authTokenFromBitLy"

Add the bitly4.sh and (modified) bitly4.py scripts to ${HOME}/bin.  Add ${HOME}/bin to your $PATH} if you like.

## Running the script

```bash
bitly4.sh LONG_URL
```

From the Pi:

```bash
ssh other_linux_host bin/bitly4.sh LONG_URL
#eg
RESPONSE=$(ssh zenbook bin/bitly4.sh \"${URL}\")
```
