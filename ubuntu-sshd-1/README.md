# docker examples

## ubuntu-1

### Dockerfile
```
docker build -t my-ubuntu:1 .
docker images

#
# -i     interactive
# -t     tty
# -d     background (detach)
# --rm   automatically remove
# -h     host name
# --name container name
# 
docker run -itd --rm -h myubuntu1 --name my-ubuntu-1 my-ubuntu:1
docker ps

docker attatch my-ubuntu-1

Ctrl-P, Ctrl-Q

# save changes to new image
docker commit my-ubuntu-1 my-ubuntu:2
docker images

docker stop my-ubuntu-1
# automaticlly remove container
docker ps -a
```

### docker compose
```
docker compose up -d

docker compose attach ubuntu

docker compose down

# all clean
docker compose down --rmi all --volumes
```
