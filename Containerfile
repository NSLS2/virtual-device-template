FROM ghcr.io/prefix-dev/pixi:0.83.0

WORKDIR /simulator

COPY . .

RUN pixi install

CMD ["pixi", "run", "simulator"]
