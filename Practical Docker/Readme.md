# Practical Docker

A practical guide for installing Docker, creating containers, and transferring them between environments.

---

## 📚 Table of Contents

- [Docker Installation](#docker-installation)
  - [How to install Docker on Windows 10](#how-to-install-docker-on-windows-10)
  - [How to install Docker on Debian 13, codename Trixie](#how-to-install-docker-on-debian-13-codename-trixie)
- [Creating Containers](#creating-containers)
  - [Create Debian Trixie Docker Containers](#create-debian-trixie-docker-containers)
    - [To create a Docker container running Debian Trixie (testing branch, codename "trixie")](#to-create-a-docker-container-running-debian-trixie-testing-branch-codename-trixie)
    - [Adding volumes to containers](#adding-volumes-to-containers)
    - [Testing the volume](#testing-the-volume)
    - [Store persistent data for your Debian Trixie container using docker run](#store-persistent-data-for-your-debian-trixie-container-using-docker-run)
    - [Store persistent data for your Debian Trixie container using docker compose](#store-persistent-data-for-your-debian-trixie-container-using-docker-compose)
    - [Options to persist multiple directories](#options-to-persist-multiple-directories)
    - [Make a ready-to-use Dockerfile + Compose setup that automates the symlinks and directory creation](#make-a-ready-to-use-dockerfile--compose-setup-that-automates-the-symlinks-and-directory-creation)
    - [Enhance the Debian Trixie container to include common development tools so it’s ready to use right away](#enhance-the-debian-trixie-container-to-include-common-development-tools-so-its-ready-to-use-right-away)
- [Export and Import Containers](#export-and-import-containers)
  - [Export and Import Docker containers](#export-and-import-docker-containers)
    - [Export a Docker container and move it to another machine](#export-a-docker-container-and-move-it-to-another-machine)
    - [How to export and import a container with a volume](#how-to-export-and-import-a-container-with-a-volume)
    - [Step-by-step process that will export a container with its attached volumes so you can move everything](#step-by-step-process-that-will-export-a-container-with-its-attached-volumes-so-you-can-move-everything)
      - [Are this steps restoring changes made to the container on the previous machine?](#are-this-steps-restoring-changes-made-to-the-container-on-the-previous-machine)
    - [Export and Import containers using Scripts](#export-and-import-containers-using-scripts)

---

## Docker Installation

### How to install Docker on Windows 10

### How to install Docker on Debian 13, codename Trixie

---

## Creating Containers

### Create Debian Trixie Docker Containers

#### To create a Docker container running Debian Trixie (testing branch, codename "trixie")

#### Adding volumes to containers

#### Testing the volume

#### Store persistent data for your Debian Trixie container using docker run

#### Store persistent data for your Debian Trixie container using docker compose

#### Options to persist multiple directories

#### Make a ready-to-use Dockerfile + Compose setup that automates the symlinks and directory creation

#### Enhance the Debian Trixie container to include common development tools so it’s ready to use right away

---

## Export and Import Containers

### Export and Import Docker containers

#### Export a Docker container and move it to another machine

#### How to export and import a container with a volume

#### Step-by-step process that will export a container with its attached volumes so you can move everything

##### Are this steps restoring changes made to the container on the previous machine?

#### Export and Import containers using Scripts
