#!/bin/bash

cd ~
mkdir .jupyter

# copy the jupyter configuration into home-directory
cp -r jupyter_notebook_config.py ~/.jupyter/

cd ${MAIN_PATH}

#mkdir notebooks
jupyter lab