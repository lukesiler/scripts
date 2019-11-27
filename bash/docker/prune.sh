#!/bin/bash
# prune unused things that are using disk space.  This is helpful when encountering "no space left on device" errors.

docker system prune
docker volume rm $(docker volume ls -qf dangling=true)
