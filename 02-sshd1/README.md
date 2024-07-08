# docker examples

## 02-sshd1

### docker compose
```
docker compose up -d

ssh -p 10022 ubuntu@localhost
  or
ssh ssh://ubuntu@localhost:10022/

docker compose down

# all clean
docker compose down --rmi all --volumes
```
