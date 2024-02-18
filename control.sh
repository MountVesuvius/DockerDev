#!/bin/bash

function ide() {
  docker run -it -v $(pwd):/workspace fresh-nvim
}

ide
