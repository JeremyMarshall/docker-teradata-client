# docker-teradata-client

This repo is to build a Docker Teradata Client. 

Its not quite as simple as that, you will also need to:-

* Download 

<http://downloads.teradata.com/download/connectivity/odbc-driver/linux>

* Create another Docker image from this one with a Dockerfile like this

```
FROM jeremymarshall/teradata-client
```

* Copy the downloaded tar.gz file above directly into the folder with the Dockerfile

* Build yourself your own container

```
docker build -t my-own-teradata-client \
    --force-rm=true --no-cache=true .
```

