FROM ghcr.io/mihsamusev/docker_lp_solvers

COPY .github/workflows/entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
COPY . /app
WORKDIR /app

RUN python -m pip install --no-cache-dir . | rm -rf build

ENTRYPOINT ["/app/entrypoint.sh"]
