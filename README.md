# Sirius Storage Testnet Community Onboarding

## OS Requirements
Ensure that your local network allows inbound/outbound traffic on these ports:
- 3000/tcp
- 6466/tcp
- 64666/tcp
- 6366/tcp
- 63666/tcp

A note on System Requirements:
Theoretically, this dockerized Sirius Storage package can run on any OS running Docker version 19.03.3.

But if you really need a minimum benchmark, we have seen the Sirius Storage Replicator to work with a minimum Hardware of 1 CPU core and 2GB RAM.

This README was prepared by testing the package on:
- Ubuntu 18.04


## Pre-requisite
This onboarding method requires `docker`.  

Run the following command to install `docker`:
```
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sh get-docker.sh
```

Git needs to be installed.
```
$ sudo apt install git
```


## How to download Sirius Storage :

```
git clone https://github.com/proximax-storage/sirius-storage-testnet-onboarding.git
```

## How to run as Drive Owner 


```
cd sirius-testnet-onboarding/drive
# start storage drive
./start-drive.sh

# stop storage drive
./stop-drive.sh
```

## How to run as Replicator and Verifier 

```
cd sirius-testnet-onboarding/replicator
# start storage replicator
./start-replicator.sh

# stop storage replicator
./stop-replicator.sh
```

## DFMS and DFMSR Command
The docker image contains the `dfmsr` and `dfms` command. 

You will be able to access the `dfmsr` command via docker using the following:
`docker exec replicator dfms` 

and you will be able to access the `dfms` command via docker using the following:
`docker exec drive dfms` 

Instead of typing a long command on the command line, you can create a shortcut by creating bash aliases:
```

alias dfmsr="docker exec replicator dfms"
alias dfms="docker exec drive dfms"
```

To make the alias persistent you need to declare it in the ~/.bash_profile or ~/.bashrc file. Open the ~/.bashrc in your text editor:
```
nano ~/.bashrc
```
and add your aliases:

```
# ~/.bashrc
# Aliases
# alias alias_name="command_to_run"

# Long format list
alias dfmsr="docker exec replicator dfms"
alias dfms="docker exec drive dfms"
```

You should name your aliases in a way that is easy to remember. It is also recommended to add a comment for future reference.

Read more about the usage of the `dfmsr` and `dfms` CLI [here](https://storagedocs.xpxsirius.io/)

Please take note that the alias command can only be run when the `drive` and/or `replicator` are running


## Helpdesk
We have a [telegram helpdesk](https://t.me/proximaxhelpdesk) to assist general queries.
