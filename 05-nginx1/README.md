# docker examples

## nginx1

シンプルなWebサーバー

### 設定

ポート番号に注意

- [docker-compose.yml](docker-compose.yml)
- [data/conf/default.conf](data/conf/default.conf)

### docker compose
```
docker compose up -d

docker compose down

# all clean
docker compose down --rmi all --volumes

rm logs/*
```
