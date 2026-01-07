# fragpipe Usage

1. Ensure your system has docker installed.
    - Check by "docker --help" in terminal 
    - If encounter "command not found"
        export PATH=$PATH:/usr/local/bin 
        docker login 
2. Copy necessary tools into the `./tools` folder (`.jar` files that fragpie needs to run)
3. Copy necessary data into the `./data` folder (fasta, modified workflow, mzMl, etc.)
4. Update the workflow and manifest files
5. Run `./run.sh` as a helper command to run the fragpie docker container into bash shell with proper volumes mounted.
6. In the containers bash shell, run `/tools/run-inner.sh` to start processing