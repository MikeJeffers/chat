# Chat
Hey chat  

This is the master repo for a simple chat application with services implemented in a variety of languages and frameworks orchestrated together with a single command:
```sh
./prod-up.sh
```
The web based client is a typescript react application that will allow you to register a user and connect to various chat servers.  Each chat server is a websocket server that hosts a single channel for users to connect to and chat with eachother.
The User registration and Login API's are too multiple services proxied by an nginx instance which round-robins requests amoung different API servers.  This demonstrates the ability to implement the same API requirements using a variety of technologies.

## Setup
**Warning: git submodules ahead**  
Clone this repo with:
```sh
git clone --recurse-submodules <git repo url>
```
Or suffer with the following
```sh
git submodule init
git submodule update
```
_Its really not that bad_

### Envs
The project and docker-compose expect a `.env` file at the root with the necessary variables.
Run `./init.sh` to quickly make this file with the example provided.
Configure this to your needs.

## Run
```sh
./prod-up.sh
```
Stop with:
```sh
docker-compose down
```
Or stop/wipe volumes with:
```sh
./clean.sh
```

