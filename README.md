<div align="center">

<img alt="dotfiles logo" src="assets/dotnet-logo.png" width="100">
<h2 align="center">.NET Templates</h2>

![ansible](https://img.shields.io/badge/>=8.0-5027D5?style=flat-square&logo=dotnet)
[![License](https://img.shields.io/badge/License-MIT-b5dc10?style=flat-square)](https://opensource.org/licenses/MIT)

</div>

This repository contains .NET Core templates I use
in my daily basis projects.

## About templates

You can navigate between templates in the `src/` folder. Each template
has its own `README.md` file with more information about it.


## Setup

You can set your development environment as below:

```sh
dotnet tool install -g dotnet-reportgenerator-globaltool
dotnet restore
```

## Running

You can run a specific project as follows:

```sh
# Run a project
dotnet run --project src/<project> --no-incremental

# Run in development mode (with hot reload)
dotnet watch --project src/<project> 
```

## Build

You can build a specific project as follows:

### Build project

```sh
# Using Taskfile
task build

# Or directly with the CLI
dotnet build --no-incremental
```

### Build a container image

```sh
# Using Taskfile
task docker-build PROJECT=<project> IMAGE_NAME=<image-name>

# Or directly with Docker
docker build --build-arg PROJECT=<project> -t <image-name> .

# Or even with Podman
podman build --build-arg PROJECT=<project> -t <image-name> .
```
