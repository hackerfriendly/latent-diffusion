#!/bin/bash

if [ -z "$VIRTUAL_ENV" ]; then
  echo "Run this script from inside a python 3 virtualenv:"
  echo "  $ virtualenv --python=python3 ldenv --prompt='(dreams-env) '"
  echo "  $ . ldenv/bin/activate"
  exit 1
fi

pip install torch==1.7.0+cu110 'torchvision==0.8.1+cu110' torchaudio==0.7.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install -r requirements.txt
