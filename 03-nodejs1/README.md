# docker examples

## 03-nodejs

### docker compose
```
docker compose up -d

docker compose attach nodejs1_svc
pnpm -v

docker compose down

# all clean
docker compose down --rmi local --volumes
```

### nodeapp1
```
docker compose attach nodejs1_svc

cd /vol/nodeapp1
npm install nodemon --save-dev
npm run start-mon
```

```
curl -X GET http://localhost:13000/
curl -X POST http://localhost:13000/
curl -X PUT http://localhost:13000/123
curl -X DELETE http://localhost:13000/ytani
```
