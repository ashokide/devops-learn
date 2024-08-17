## GitLab CI/CD

`.gitlab-ci.yml` is a YAML file that defines the CI/CD pipeline for a GitLab project

#### Variables
Environment variables that can be used throughout the pipeline

```yml
variables:
  MY_VAR: "Hello, World!"
  MY_ENV_VAR: "Hello, World!"
```

#### Image
Specifies the Docker image to use for the pipeline

```yml
image: alpine:latest
```

#### Stages
Defines the stages of the pipeline, such as build, test, and deploy

```yml
stages:
  - build
  - test
  - deploy
```
