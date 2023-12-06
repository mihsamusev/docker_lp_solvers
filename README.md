Example of build / run and publish of a simple parametrized python container

Build locally
```sh
docker build -t example .
```

Run locally and submit env variables
```sh
docker run -it --rm example
docker run -it --rm -e BASE_URL=http://example.com example
```

Create `.env` file with the following content
```txt
PORT=420
BASE_URL=http://based.com
```

Run locally 
```sh
docker run -it --rm example
docker run -it --rm --env-file .env example
```

Pull and run published
```sh
docker pull ghcr.io/mihsamusev/docker_actions_example:main
docker run -it --rm -e BASE_URL=http://some_url ghcr.io/mihsamusev/docker_actions_example:main
```