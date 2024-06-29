# docker examples

## ubuntu-sshd-1

### docker compose
```
docker compose up -d

docker compose attach ubuntu

ssh -p 10022 ubuntu@localhost

docker compose down

# all clean
docker compose down --rmi all --volumes
```
