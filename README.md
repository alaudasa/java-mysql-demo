# Build and run database
```bash
cd database
docker build -t demodb .
docker run -d -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=<password> \
    java-demo
```

# Build and run Java Website
```bash
docker build -t java-demo .
docker run -d -p 8080:8080 \
  -e MYSQL_HOST=xxx \
  -e MYSQL_PORT=3306 \
  -e MYSQL_DB=persondb \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=root \
  java-demo
```


http://localhost/demo/persons
