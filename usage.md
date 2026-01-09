### fragpipe Docker Manual for BIOL4415 lab1

Official documentation: (https://fragpipe.nesvilab.org/docs/tutorial_headless.html) 
##### Please read this documentation throoughly as it explained the whole workflow of fragpipe. Additional tags and detailed parameters can be found here to tailor your code if needed

1. Ensure your system has docker installed. Start the Docker daemon (can just start the docker Desktop). 
    - Check by "docker --help" in terminal 
    - If encounter "command not found"
        ```
        export PATH=$PATH:/usr/local/bin 
        docker login 
        ```

2. Copy the necessary tools into the `./tools` folder (`.jar` files that fragpie needs to run)
    [Additional tools and different version released] (https://github.com/Nesvilab/FragPipe/releases/)
    - The three tools that fragpipe 23.1 requires to operate: IonQuant.jar, MSFragger.jar, diaTracer.jar (these can 
    be downloaded via the fragpipe offical website with an institution related email for academic use)
    - Here the tools have been already downloaded and included in the `./tools` folder 

3. Copy necessary data into the `./data` folder (fasta, modified workflow, mzMl, manifest.tsv, etc.)
    - Move the .mzML files from the ./mzMLFiles folder and fasta files from the ./fastaFiles in to the `./data` folder in the repo or move those files from ./testData folder from the OneDrive biol4415 folder to the `./data` folder in the repo.
    - All the Workflow files are included in the docker image you pulled and can be found in the `./workflows-original` folder, you can modify the parameters based on the your need for the experiment. Here we will use the "LFQ-MBR_custom.workflow" from the ./testData folder into the `./data` in the repo. 

4. Update the workflow and manifest files
    - Adjust the content of the .workflow and manifest.tsv files based on your need for the experiment
    - .mzML files information can be found in the fragpipe_mzML_info.tsv file

5. Run `./run.sh` as a helper command to run the fragpie docker container into bash shell with proper volumes mounted.
    - The version of _fragpipe_ is frozen to 23.1 of the docker image in the `./run.sh` in case of dependancies or update issues. Feel free to change it to "latest" tag or any other versions in the future if there are major functions update. 
    - Here the volumns are bind mounted to the local directory where you pulled the repo. 
6. In the containers bash shell, run `/tools/run-inner.sh` to start processing