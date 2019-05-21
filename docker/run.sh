#!/bin/sh

COMP="$1"
ENV_TAG=env-$COMP

docker build --build-arg Competition=$COMP \
             -t $ENV_TAG \
             -f Dockerfile .

docker run -ti -v ${PWD}/competitions/$COMP:/usr/local/bin/jpl_config/competitions/$COMP \
               -p 8888:8888 \
               $ENV_TAG
