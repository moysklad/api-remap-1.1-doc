#!/bin/bash

docker build . --tag aglio
docker run -v $(pwd)/src:/src -v $(pwd)/output:/output -t aglio -i src/main.apib ---theme-template src/index.jade --theme-variables src/variables-flatly.less  -o output/index.html
