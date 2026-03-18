# Virtual Device Template

This repository contains a [copier](https://copier.readthedocs.io/en/stable/) template for creating virtual device backend repositories. It is intended for creating simulators for devices that communicate via a standard remote interface protocol, such as an ASCII protocol over a socket, a REST API, a gRPC API, or a ZMQ protocol. The template provides a basic structure for the simulator, including a command-line interface (CLI) and a Containerfile for containerization.

## Getting Started

To start, install [copier](https://copier.readthedocs.io/en/stable/) and run the following command to create a new repository from this template:

```bash
copier copy gh:NSLS2/virtual-device-template virtual-device
```

replacing `device` with the name of your device. For example, if you are creating a simulator for a device `foo`, you would run:

```bash
copier copy gh:NSLS2/virtual-device-template virtual-foo
```

Follow the prompts to specify your name and email, and to choose what sort of control and readout API your device uses. This will generate a new repository with the appropriate structure and dependencies for your simulator.

## Starting The Simulator

Once you've generated the template, you'll need to initialize it as a git repository, and make an initial commit:

```bash
cd virtual-foo
git init
git add -A
git commit -m "Initial commit from copier template"
```

Then, you can use `pixi` to run the simulator. Initially, there won't be any functionality, but you can verify that the CLI is working by running:

```bash
pixi run simulator --version
```

If you do not have `pixi` installed, [run the installation script as described in the docs](https://pixi.prefix.dev/latest/#installation).

From here, you can start implementing the simulator's functionality. The main entrypoint is the `start` function in the `Virtual*` class.

## Building a Container Image

To build a container image for the simulator, run the following command:

```bash
pixi run -e dev build-container-image
```

This will create a container image using the Containerfile provided in the template. You can then run the container using your preferred container runtime, such as Docker or Podman.
