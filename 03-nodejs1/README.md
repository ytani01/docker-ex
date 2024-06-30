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
cd ~
ln -s /work .

cd ~/work/nodeapp1

npm run start-mon
```

```
curl -X GET http://localhost:13000/
curl -X POST http://localhost:13000/
curl -X PUT http://localhost:13000/123
curl -X DELETE http://localhost:13000/ytani
```
