### fragpipe Docker Manual for BIOL4415 lab1

Official documentation: (https://fragpipe.nesvilab.org/docs/tutorial_headless.html) 
##### Please read this documentation throoughly as it explained the whole workflow of fragpipe. Additional tags and detailed parameters can be found here to tailor your code if needed

1. Ensure your system has docker installed. Start the Docker daemon (can just start the docker Desktop). 
    - Check by "docker --help" in terminal 
    - If encounter "command not found"
        ```
        export PATH="$PATH:$HOME/.docker/bin"
        docker login 
        ```

2. Copy the necessary tools into the `./tools` folder (`.jar` files that fragpie needs to run)
    [Additional tools and different version released] (https://github.com/Nesvilab/FragPipe/releases/)
    - The three tools that fragpipe 23.1 requires to operate: IonQuant-1.11.18.jar, MSFragger-4.4.jar, diaTracer-2.2.1.jar (these can 
    be downloaded via the fragpipe offical website with an institution related email for academic use)
    - Move the downloaded tools into the `./tools` folder 

3. Copy necessary data into the `./data` folder (fasta, modified workflow, mzMl, manifest.tsv, etc.)
    - Move the .mzML files and fasta files from the `./biol4415_lab1_testData` downloaded from the OneDrive in to the `./data` folder or just mount the ./data folder from the `./biol4415_lab1_testData` folder to the docker container in the `./run.sh` (replace the ./data with your absolute path to the ./data of `./biol4415_lab1_testData`)
    - All the Workflow files are included in the docker image you pulled and can be found in the `./workflows-original` folder,
    you can modify the parameters based on the your need for the experiment 
    - We will be using the "LFQ-MBR_custom.workflow" file that is already included in the `./data` folder you have mounted 

4. Update the workflow and manifest files
    - Adjust the content of the .workflow and manifest.tsv files based on your need for the experiment
    - .mzML files information can be found in the fragpipe_mzML_info.tsv file

5. Run `./run.sh` as a helper command to run the fragpie docker container into bash shell with proper volumes mounted.
    - The version of _fragpipe_ is frozen to 23.1 of the docker image in the `./run.sh` in case of dependancies or update issues. Feel free to change it to "latest" tag or any other versions in the future if there are major functions update. 
    - Here the volumns are bind mounted to the local directory where you pulled the repo. 
6. In the containers bash shell, run `/tools/run-inner.sh` to start processing