# Build yourself
## Build database
```bash
cd database
```


## Build  Java Website
```bash
docker build -t java-mysql-demo .

```

# Pull image 
```
docker pull registry.alauda.cn/alaudasa/java-mysql-demo
docker pull registry.alauda.cn/alaudasa/java-mysql-demo-database
```

# Run

## run database
```
docker run -d -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=<password> \
    registry.alauda.cn/alaudasa/java-mysql-demo-database
```

## Run Java Website
```
docker run -d -p 8080:8080 \
  -e MYSQL_HOST=xxx \
  -e MYSQL_PORT=3306 \
  -e MYSQL_DB=persondb \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=root \
  registry.alauda.cn/alaudasa/java-mysql-demo
```

## Access Demo Website

http://localhost/demo/persons
