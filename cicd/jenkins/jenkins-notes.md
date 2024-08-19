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

#### Stages
Group the pipeline into different phases such as build, test, and deploy. Each stage can contain multiple steps
  
```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            
        }

        stage('Test') {
            
        }
    }
}
```
#### Steps
Steps are individual tasks within a stage. Steps can include commands like shell scripts

```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}
```

#### Environment Variables
Allows to define environment variables that can be used throughout the pipeline

```groovy
pipeline {
    agent any
    environment {
        MY_ENV_VAR = 'some_value'
    }
    stages {
        stage('Example') {
            steps {
                sh 'echo The value of MY_ENV_VAR is $MY_ENV_VAR'
            }
        }
    }
}
```
