#!/bin/bash

function spin() {
    CONTAINER_NAME="$1"$(date +%d-%m-%y)
    if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
        # reattach
        if ! docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
            docker start "$CONTAINER_NAME"
            docker attach "$CONTAINER_NAME"
        fi
    else
      docker run -it --name $CONTAINER_NAME -v $(pwd):/workspace fresh-nvim
    fi
}

# will be an alias, but this is for testing
# function idew () {
#     spin "work"
# }
#
# idew


# pseudo code
# name = container name + date
#
# if $name exists
#   if $name not running
#       spin up $name
#       
# else
#   create container --name $name
#   spin up $name
#
# Note:
# the name + date should automatically create a new container every day
