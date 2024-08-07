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
* docker compose --profile `profile-name` command

## Services

```yaml
services:
  service_name:
    build:
      context: <path_to_dockerfile>
      args:
        - <key>=<value>
        - <key>=<value>
    ports:
      - "<source_port>:<destination_port>"
    environment:
      - "<key>=${env_file}"
      - <key>=<value>
    depends_on:
      - <service_name>
    profiles:
      - <profile_name> # named subnets of service

  service_name:
    image: <image_name>
    env_file:
      - <path-to-env-file>
    volumes:
      - <host_path>:<container_path>:<file_mode>
      - <host_path>:<container_path>:<file_mode>
volumes:
  <volume_name>:
```

## Multiple Compose Files
```
docker compose -f <compose_file.yaml> -f <compose_file.override.yaml> <command>
```

## Load Env File 
```
docker compose --env-file <env_file_path> <command>
```

## File Modes
* rw
* ro

## Bind Mount
```
  volumes:
    - type: bind
      source: <host_path>
      target: <container_path>
      read_only: true
```
