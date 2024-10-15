#!/usr/bin/env bash

CUI_ROOT=/content/drive/MyDrive/cui
mkdir -p $CUI_ROOT
WORKDIR="$CUI_ROOT/ComfyUI"

pip install -r requirements.txt

cd $CUI_ROOT

[ ! -d $WORKDIR ] && git clone https://github.com/comfyanonymous/ComfyUI.git
cd $WORKDIR
git pull

# cd custom_nodes
# [ ! -d 'ComfyUI-Manager' ] && git clone https://github.com/ltdrdata/ComfyUI-Manager.git
# cd 'ComfyUI-Manager'
# git pull

# cd ..
# [ ! -d 'ComfyUI-Impact-Pack' ] && git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git
# cd 'ComfyUI-Impact-Pack'
# git pull
# git submodule update --init --recursive

# cd ..
# [ ! -d 'ComfyUI-OpenPose-Editor' ] && git clone https://github.com/space-nuko/ComfyUI-OpenPose-Editor.git
# cd 'ComfyUI-OpenPose-Editor'
# git pull

# cd ..
# [ ! -d 'ComfyUI_IPAdapter_plus' ] && git clone https://github.com/cubiq/ComfyUI_IPAdapter_plus.git
# git pull
# cd $WORKDIR

# pip install -r requirements.txt \
#     --extra-index-url https://download.pytorch.org/whl/cu121

npm install -g localtunnel
