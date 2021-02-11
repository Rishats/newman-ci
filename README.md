## Latest Docker image with Newman for GitLab Continuous Integration Pipeline

### Description
This image runs Newman-5.2.2 on Node-14.5

This image does not have an entrypoint so it can be used in GitLab CI Pipeline.

Docker hub url: 
 - [skeletondocker/newman-ci](https://hub.docker.com/r/skeletondocker/newman-ci/)

#### Gitlab CI
Example .gitlab-ci.yml:

```
...your pipeline config...
stages:
  - postman-test

postman-test:
  stage: postman-test
  image: skeletondocker/newman-ci
  script:
    - newman run path/to/collection.json -e  path/to/environments.json -r cli,html --reporter-html-export newman-results.html --color on
  artifacts:
    when: always
    paths:
      - newman-results.html
```

#### Docker

Docker Pull Command

```
docker pull skeletondocker/newman-ci
```

Docker Run Command

```
docker run skeletondocker/newman-ci newman --help
```