# debian.Dockerfile
FROM python:3-slim AS build-env
ADD . /app
WORKDIR /app

FROM python:3-buster
COPY --from=build-env /app /app
WORKDIR /app
CMD ["python", "hello.py", "/etc"]
