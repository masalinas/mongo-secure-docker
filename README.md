# Description
Mongo secure docker

# export command
```shell
mongodump -d wmspoc -o ./dump
```

# import command
```shell
#!/usr/bin/env bash
mongorestore -u admin -p underground --authenticationDatabase admin --db wmspoc /dump/wmspoc
```

# instance docker command
```shell
docker run -it --name mongo-test -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=underground -e MONGO_INITDB_DATABASE=wmspoc -v $PWD/dump/wmspoc:/dump/wmspoc -v $PWD/initialize.sh:/docker-entrypoint-initdb.d/initialize.sh -p 27017:27017 mongo
```
