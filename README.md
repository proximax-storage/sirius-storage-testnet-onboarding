# Sirius Storage Testnet Community Onboarding

## Basic Overview
This onboarding will help users to operate as Sirius Storage Drive Owner Node and/or Sirius Storage Replicator Node.

[Drive Owner](https://storagedocs.xpxsirius.io/docs/roles/owner/) is an owner who initiates files storage in the DFMS network.  

[Replicator](https://storagedocs.xpxsirius.io/docs/roles/replicator/) node has 2 roles:

1) replicator: store drive owner's data for payment.
2) verifier: checking that data is untouched and safe

For better understand how the Sirius Storage works, it will be worthwhile reading the [online sirius storage documentation](https://storagedocs.xpxsirius.io/) 


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


## How to download Sirius Storage:

```
git clone https://github.com/proximax-storage/sirius-storage-testnet-onboarding.git
```

## How to run as Drive Owner 

Change directory:
```
cd sirius-testnet-onboarding/drive
```

Getting started instructions can be found [here](./drive/README.md).

## How to run as Replicator and Verifier

### Generate a key pair for the node:
```
./generate_address
```

### Change directory:
```
cd sirius-testnet-onboarding/replicator
```

### Add private key:

Edit `start-replicator.sh` and replace `<PRIVATE_KEY>` with replicator drive account's private key.

```
#!/bin/bash

$replicator_key = "<PRIVATE_KEY>"

docker stop replicator
docker rm replicator
docker run -d --name replicator --network host -v $PWD:/root/.dfmsr:rw proximax/sirius-storage-replicator:v0.6.3 dfms -k $replicator_key
docker exec replicator dfms contract accepting
```

### Start storage replicator
```
./start-replicator.sh
```

### stop storage replicator
```
./stop-replicator.sh
```

#TODO: 
- Getting started instructions for Sirius Storage Replicators

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


## References
- [Sirius Storage](https://storagedocs.xpxsirius.io/)

- [ProximaX Exchange Market](https://storagedocs.xpxsirius.io/docs/built_in_features/exchange/)
