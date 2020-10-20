#!/bin/bash

MAP=`$(pwd)/map`
mkdir -p $MAP
find ./build -name "*.js.map" | xargs -I {} cp {} $MAP