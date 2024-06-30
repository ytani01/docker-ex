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
cp -r /work/nodeapp1 .

cd ~/nodeapp1

sudo npm update -g npm

npm install nodemon --save-dev

npm run start-mon
```

```
curl -X GET http://localhost:13000/
curl -X POST http://localhost:13000/
curl -X PUT http://localhost:13000/123
curl -X DELETE http://localhost:13000/ytani
```
