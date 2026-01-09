#!/bin/bash

# Path to the execute the fragpipe software in fragpipe23.1 
cd /fragpipe_bin/fragpipe-23.1/fragpipe-23.1/bin

# Setting the variables for easier modifications 
WORKFLOW=/data/LFQ-MBR_custom.workflow
MANIFEST=/data/manifest.tsv
WORKDIR=/output
TOOLS=/tools

# Run the software in the headless mode since no GUI
./fragpipe --headless --workflow $WORKFLOW --manifest $MANIFEST --workdir $WORKDIR --config-tools-folder $TOOLS
