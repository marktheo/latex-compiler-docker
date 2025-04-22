# LaTeX deploy guide for Docker

**Create the docker image before running as a container**
```
docker build -t latex-compiler:latest .
```

<br>

**Create an alias for running the built image**
```
alias latex-compiler='docker run --rm -v "$(pwd)":/data --user "$(id -u):$(id -g)" latex-compiler'
```
