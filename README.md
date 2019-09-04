# Go Live Reload
Production ready boilerplate with live-reloading development

## Using with Docker
Start production enviroment
```
$ docker-compose up -d production
// View logs
$ docker-compose logs --tail 100 -f production
```

Start development enviroment 
```
$ docker-compose up dev
```

Re-building docker
```
$ docker-compose build --no-cache
```

Attach to bash
```
$ docker-compose exec <production|development> sh
```

## Example
After running docker-compose open:
development: http://localhost:8080/
production:  http://localhost:8081/ 

## Without docker
```
$ cd src
$ go mod download
$ cd ../
$ make serve
``` 

## Configure scripts
`scripts/production.sh` production build script
`scripts/development.sh` development run script