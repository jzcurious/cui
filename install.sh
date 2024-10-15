#!/usr/bin/env bash

CUI_ROOT=/content/drive/MyDrive/cui
mkdir -p $CUI_ROOT
WORKDIR="$CUI_ROOT/ComfyUI"

cd $CUI_ROOT

[ ! -d $WORKDIR ] && git clone https://github.com/comfyanonymous/ComfyUI.git
cd $WORKDIR
git pull
pip install -r requirements.txt

cd custom_nodes
[ ! -d 'ComfyUI-Manager' ] && git clone https://github.com/ltdrdata/ComfyUI-Manager.git
cd 'ComfyUI-Manager'
git pull
pip install -r requirements.txt

# cd ..
# [ ! -d 'ComfyUI-Impact-Pack' ] && git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git
# cd 'ComfyUI-Impact-Pack'
# git pull
# git submodule update --init --recursive
# pip install -r requirements.txt

# cd ..
# [ ! -d 'ComfyUI-OpenPose-Editor' ] && git clone https://github.com/space-nuko/ComfyUI-OpenPose-Editor.git
# cd 'ComfyUI-OpenPose-Editor'
# git pull

# cd ..
# [ ! -d 'ComfyUI_IPAdapter_plus' ] && git clone https://github.com/cubiq/ComfyUI_IPAdapter_plus.git
# git pull
# cd $WORKDIR
