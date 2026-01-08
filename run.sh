#!/bin/bash

# docker run -it -v ./biol4415_lab1:<container directory> fcyucn/fragpipe /bin/bash

# Run this commend in the directory where you have cloned the repository
docker run -it --platform linux/amd64 -v ./data:/data -v ./tools:/tools -v ./output:/output fcyucn/fragpipe:23.1 /bin/bash

# fragpipe --headless --workflow <path to workflow file> --manifest <path to manifest file> --workdir <path to result directory>

# /fragpipe_bin/fragpipe-23.1/fragpipe-23.1/workflows/LFQ-MBR.workflow