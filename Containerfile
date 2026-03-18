FROM ghcr.io/prefix-dev/pixi:latest

WORKDIR /simulator

COPY . .

RUN pixi install

CMD ["pixi", "run", "simulator"]
