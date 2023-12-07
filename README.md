Example of build / run and publish of a simple parametrized python container

The base image with solvers described in `solvers/Dockerfile` can be found at https://github.com/mihsamusev/docker_lp_solvers/pkgs/container/docker_lp_solvers


### Build env for LP example image
```sh
docker build -t lp_problem .
```

### Run
Run the container and then LP example in one go
```sh
docker run -it --rm lp_problem
```

Enter the container env and then LP example interactively
```sh
docker run -it --rm lp_problem /bin/bash
python lp_problem/lp_example.py
```
