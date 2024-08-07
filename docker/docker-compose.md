## Docker Compose
* Allows to manage multiple docker services easily
* Uses `YAML` file format

## Docker Core Commands

* docker compose --help
* docker compose build
* docker compose up
* docker compose down
* docker compose start
* docker compose stop
* docker compose restart
* docker compose --profile `profile-name` up

## Services

```yaml
services:
  service-name:
    build:
      context: <path-to-dockerfile>
      args:
        - <key>=<value>
        - <key>=<value>
    ports:
      - "<source-port>:<destination-port>"
    environment:
      - "<key>=${env_file}"
      - <key>=<value>
    depends_on:
      - <service-name>
    profiles:
      - <profile-name> # named subnets of service

  service-name:
    image: <image-name>
    env_file:
      - <path-to-env-file>
    volumes:
      - <source-path>:<destination-path>:<file-mode>
      - <volume-name>:<destination-path>:<file-mode>
volumes:
  <volume-name>:
```

## Multiple Compose Files
```
docker compose -f <compose-file.yaml> -f <compose-file.override.yaml> <command>
```

## Load Env File 
```
docker compose --env-file <env-file-path> <command>
```

## File Modes
* rw
* ro
