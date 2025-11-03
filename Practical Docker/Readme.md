# Practical Docker

A practical guide for installing Docker, creating containers, and transferring them between environments.

## 📚 Table of Contents

- Docker Installation
  - [How to install Docker on Windows 10](./How%20to%20install%20Docker%20on%20Windows%2010.md)
  - [How to install Docker on Debian 13, codename Trixie](./How%20to%20install%20Docker%20on%20Debian%2013,%20codename%20Trixie.md)
  - [SSH to Debian WSL](./SSH%20to%20Debian%20WSL.md)
- Creating Containers
  - [Create Debian Trixie Docker Containers](./Create%20Debian%20Trixie%20Docker%20Containers.md)
    - [To create a Docker container running Debian Trixie (testing branch, codename "trixie")](./Create%20Debian%20Trixie%20Docker%20Containers.md#to-create-a-docker-container-running-debian-trixie-testing-branch-codename-trixie)
    - [Adding volumes to containers](./Create%20Debian%20Trixie%20Docker%20Containers.md#adding-volumes-to-containers)
    - [Testing the volume](./Create%20Debian%20Trixie%20Docker%20Containers.md#testing-the-volume)
    - [Store persistent data for your Debian Trixie container using docker run](./Create%20Debian%20Trixie%20Docker%20Containers.md#store-persistent-data-for-your-debian-trixie-container-using-docker-run)
    - [Store persistent data for your Debian Trixie container using docker compose](./Create%20Debian%20Trixie%20Docker%20Containers.md#store-persistent-data-for-your-debian-trixie-container-using-docker-compose)
    - [Options to persist multiple directories](./Create%20Debian%20Trixie%20Docker%20Containers.md#options-to-persist-multiple-directories)
    - [Make a ready-to-use Dockerfile + Compose setup that automates the symlinks and directory creation](./Create%20Debian%20Trixie%20Docker%20Containers.md#make-a-ready-to-use-dockerfile--compose-setup-that-automates-the-symlinks-and-directory-creation)
    - [Enhance the Debian Trixie container to include common development tools so it’s ready to use right away](./Create%20Debian%20Trixie%20Docker%20Containers.md#enhance-the-debian-trixie-container-to-include-common-development-tools-so-its-ready-to-use-right-away)
- Export and Import Containers
  - [Export and Import Docker containers](./Export%20and%20Import%20Docker%20containers.md)
    - [Export a Docker container and move it to another machine](./Export%20and%20Import%20Docker%20containers.md#export-a-docker-container-and-move-it-to-another-machine)
    - [How to export and import a container with a volume](./Export%20and%20Import%20Docker%20containers.md#how-to-export-and-import-a-container-with-a-volume)
    - [Step-by-step process that will export a container with its attached volumes so you can move everything](./Export%20and%20Import%20Docker%20containers.md#step-by-step-process-that-will-export-a-container-with-its-attached-volumes-so-you-can-move-everything)
      - [Are these steps restoring changes made to the container on the previous machine?](./Export%20and%20Import%20Docker%20containers.md#are-these-steps-restoring-changes-made-to-the-container-on-the-previous-machine)
    - [Export and Import containers using Scripts](./Export%20and%20Import%20Docker%20containers.md#export-and-import-containers-using-scripts)
