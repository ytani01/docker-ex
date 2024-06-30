# docker examples

## 03-nodejs

### docker compose
```
docker compose up -d

ssh -p 10022 ubuntu@localhost
ssh ssh://ubuntu@localhost:10022/

docker compose down

# all clean
docker compose down --rmi all --volumes
```

### nodeapp1
```
ssh ssh://ubuntu@localhost:10022/
:
ln -s /vol/nodeapp1

cd nodeapp1

npm run start-mon
```
