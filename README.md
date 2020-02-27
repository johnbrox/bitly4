## Aim

Simple script to shorten a long URL using bit.ly

## Requirements

- A bit.ly account (get a free one from dev.bitly.com)
- An access token from the above
- Python 3.7 (I'm using a conda environment)
- bitlyshortener python module

## Installation

# Get Miniconda from https://docs.conda.io/en/latest/miniconda.html
# Install miniconda3

```bash
bash Miniconda3-latest-Linux-x86_64.sh
```

# Initialise conda

```bash
eval "$(${HOME}/miniconda3/bin/conda shell.bash hook)"
```

# Create an environment for bitly4

```bash
conda create -n bitly4 -y python=3.7
```

# Activate it

```bash
conda activate bitly4
```

# Install the bitlyshortener inthis environment

```bash
pip install bitlyshortener
```

# Get auth_token from bit.ly and add this to bitly4.py
