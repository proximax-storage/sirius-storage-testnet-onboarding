# Sirius Storage Testnet Community Onboarding

## OS Requirements
Ensure that your local network allows inbound/outbound traffic on these ports:
- 3000/tcp
- 6466/tcp
- 64666/tcp

A note on System Requirements:
Theoretically, this dockerized Sirius Storage package can run on any OS running Docker version 19.03.3 and docker-compose version 1.24.0.

But if you really need a minimum benchmark, we have seen the Sirius Storage Replicator to work with a minimum Hardware of 1 CPU core and 2GB RAM.

This README was prepared by testing the package on:
- Ubuntu 18.04


## Pre-requisite
This onboarding method requires `docker` and `docker-compose`.  

Run the following command to install `docker`:
```
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sh get-docker.sh
```

Installation instructions for docker-compose can be found [here](https://docs.docker.com/compose/install/).

```
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
```

Git needs to be installed.
```
$ sudo apt install git
```

## How to download and run Sirius Storage :

```
git clone https://github.com/proximax-storage/sirius-storage-testnet-onboarding.git

cd sirius-storage-testnet-onboarding/drive

# start storage replicator
docker-compose up -d

# start accepting contract
docker-compose exec replicator dfms contract accepting
```

## DFMSR Command
The docker image contains the `dfmsr` command. You will be able to access the `dfmsr` command via docker using the following:
`docker exec replicator dfms` 

Instead of typing a long command on the command line, you can create a shortcut by creating bash aliases:
```
alias dfmsr="docker-compose exec replicator dfms"
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
alias dfmsr="docker-compose exec replicator dfms"
```

You should name your aliases in a way that is easy to remember. It is also recommended to add a comment for future reference.

Read more about the usage of the `dfmsr` CLI [here](https://storagedocs.xpxsirius.io/)


## Helpdesk
We have a [telegram helpdesk](https://t.me/proximaxhelpdesk) to assist general queries.
