# fb-tools in docker

http://www.mengelke.de/Projekte/FritzBox-Tools dockerized

## Build

In directory with the Dockerfile, run:

    docker build -t fbt .
    
That creates the docker image tagged `fbt`.

## Run

Navigate to the folder with your FritzBox! export and run:

    docker run --rm -v %cd%:/data -w /data -it --entrypoint bash fbt

***NOTE: The %cd% in the -v volume mount is windows specific, on ubuntu make use of '$pwd'***

Inside docker, run any commands. Because we mounted your working directory, any changes to the FS are directly reflected!

## Sample Commands

***WORK WITH COPIES! - SO you still have an intact backup for your config***

Let's say you edited parts of the "encrypted" file, for example FritzBox! Websrv Port. You will need to update the Checksum - You can do so by running:

    fb_tools Konfig File-CalcSum if:fb.export of:fb.recrypted
    
`fb.export` being your edited file. `fb.recrypted` being the 'same file' with updated checksum.
