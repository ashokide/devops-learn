## Jenkins

- `Jenkinsfile` is a file that contains the definition of a Jenkins pipeline
- Groovy-based Domain Specific Language (DSL) to define the stages and steps of the pipeline

#### Declarative Pipeline

#### Pipeline
Top-level block that defines the pipeline

```groovy
pipeline {
    
}

```

#### Agent
Defines where the pipeline or stage should run

```groovy
pipeline {
    agent any
}
```
