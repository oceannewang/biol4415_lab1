#!/bin/bash

# docker run -it -v ./tempmount:<container directory> fcyucn/fragpipe /bin/bash

docker run -it --platform linux/amd64 -v ./data:/data -v ./tools:/tools -v ./output:/output fcyucn/fragpipe:23.1 /bin/bash

# fragpipe --headless --workflow <path to workflow file> --manifest <path to manifest file> --workdir <path to result directory>
# fragpipe --headless --workflow /fragpipe_bin/fragpipe-23.1/fragpipe-23.1/workflows/LFQ-MBR.workflow --manifest /data/manifest.tsv --workdir <path to result directory>
# tempmount/manifest.tsv
# /fragpipe_bin/fragpipe-23.1/fragpipe-23.1/workflows/LFQ-MBR.workflow