# docker examples

## 02-sshd

### docker compose
```
docker compose up -d

ssh -p 10022 ubuntu@localhost

docker compose down

# all clean
docker compose down --rmi all --volumes
```
