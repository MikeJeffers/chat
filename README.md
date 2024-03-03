# Chat
Hey chat  

This is the master repo for a simple chat application with services implemented in a variety of languages and frameworks orchestrated together with a single command:
```sh
./up.sh
```
<p align="center">
<img src="https://github.com/MikeJeffers/chat/assets/2634337/d22eb753-1685-4c98-b7fc-8e88ca72b7ca" width="640">
</p>

## How it works
<p align="center">
<img src="https://github.com/MikeJeffers/chat/assets/2634337/f419a041-6c75-4933-9913-5e5b5b5043ae" width="640">
</p>

API servers are reverse proxied by Nginx and handle user auth and registration.  
When auth succeeds a JWT is returned to the client which then uses it to connect to each available WebSocket chat server.  
The Chat servers check the token against the stored token in redis.  
The client is a react SPA that allows the user to navigate the auth flow and chat with others.

### Why
This project is mostly to capture languages or frameworks, as well as dependencies, I've learned.  
Each api and chat server must implement the same interface so http and websocket traffic can be handled seamlessly with the same client.  This constraint is used to demonstrate some reasonable baseline of capability to operate and build something end-to-end in a new language.
Over time the degree of refinement in each service will also increase as more time is available to polish after the primary goal of breadth is achieved.  
New languages, or features might be scoped in in the future so who knows. 

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
./up.sh
```
Stop with:
```sh
./down.sh
```
Or stop/wipe volumes with:
```sh
./clean.sh
```

