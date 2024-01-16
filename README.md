# Chat
Hey chat  

This is the master repo for a simple chat application that features a single channel and user authentication.  From here the whole system can be up'd with a single command:
```sh
./prod-up.sh
```
Then navigate to your http://localhost and engage in rivetting conversations with the people in your walls.  
Post motivating messages.  Use it as a log of your day.  Could this be the next Twitter?    The possibilities are limited!


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

