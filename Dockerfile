FROM ghcr.io/mihsamusev/docker_lp_solvers:latest

WORKDIR /src

COPY . .

RUN python -m pip install --no-cache-dir .

ENTRYPOINT ["python", "lp_problem/lp_example.py"]
