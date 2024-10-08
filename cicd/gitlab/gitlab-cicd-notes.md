## GitLab CI/CD

`.gitlab-ci.yml` is a YAML file that defines the CI/CD pipeline for a GitLab project

Navigate 
- Build > Pipeline editor

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

#### Jobs
Defines individual jobs that run in each stage

```yml
job-name:
  stage: test
```

#### Script
Specifies the commands to run in each job

```yml
job-name:
  stage: test
  script:
    - echo "Hello World"
    - echo "Hello World"
    - echo "Hello World"
```

#### Artifacts
Files or directories that are generated during the execution of a job

```yml
build-job:
  stage: build
  script:
    - echo "Building the project..."
  artifacts:
    paths: file-to-be-copied.txt
```

#### Dependencies
Specify the relationships between jobs in a pipeline

```yml
test-job:
  stage: test
  script:
    - echo "Running tests..."
  dependencies:
    - build-job

deploy-job:
  stage: deploy
  script:
    - echo "Deploying the project..."
  dependencies:
    - test-job
```

#### Rules
Define when a job should be executed or skipped

```yml
build-job:
  stage: build
  rules:
    - if: $CI_COMMIT_BRANCH == "main"
      when: on_success

deploy-job:
  stage: deploy
  rules:
    - if: $CI_COMMIT_TAG
      when: manual
```

#### Pipeline Variables
Variables store information that you can use in job scripts

Navigate
- Settings > CICD > Variables

#### Pipeline Environments
Define and manage environments for your pipeline

Navigate
- Operate > Environments

```yml
deploy-job:
    stage: deploy
    environment: <environment-name>
```
