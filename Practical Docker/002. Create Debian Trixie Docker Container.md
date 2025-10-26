## To create a Docker container running Debian Trixie (testing branch, codename "trixie")

You can either use the official Debian image from Docker Hub (if available) or build your own with a Dockerfile.

Official Debian images:
https://hub.docker.com/_/debian

Option 1: Run directly from Debian Trixie image (if available)

```shell
docker pull debian:trixie
docker run -it --name debian-trixie debian:trixie bash

```

Option 2: Build your own Dockerfile (in case debian:trixie is not yet published)

Create a Dockerfile:

```Dockerfile
FROM debian:sid

# Change sources list to use Debian Trixie
RUN sed -i 's/sid/trixie/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        nano \
        vim \
        less \
        && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

```

Then build and run it:

```shell
docker build -t debian-trixie .
docker run -it --name my-trixie debian-trixie

```

Option 3: Create and run with Docker Compose

docker-compose.yml:

```yml
version: "3.9"
services:
  trixie:
    image: debian:trixie
    container_name: debian-trixie
    command: bash
    stdin_open: true
    tty: true

```

```shell
cd /path/to/docker-compose.yml
docker compose up -d
docker exec -it debian-trixie bash

```

## Adding volumes to containers

Option 1: Add a volume manually to an existing container

Stop the container:

```shell
docker stop debian-trixie
```

If you need the exact same container name, remove the old one first:

```shell
docker rm debian-trixie
```

Use docker run with a volume:

```shell
docker run -it --name debian-trixie -v DebianVolume:/data debian:trixie bash
```

This creates a new container with the same image but volume attached.

Option 1: Update docker-compose.yml and recreate the container

👉 Best practice: if you’re managing with Compose, update the docker-compose.yml and let Compose handle container recreation.

👉 Add the volume section toteh file docker-compose.yml:

```yml
services:
  trixie:
    image: debian:trixie
    container_name: debian-trixie
    command: bash
    stdin_open: true
    tty: true
    volumes:
      - DebianVolume:/data   # <-- mount volume here

volumes:
  DebianVolume:

```

Then apply changes:

```shell
cd /path/to/docker-compose.yml
docker compose up -d
```

⚠️ This will recreate the container (the old one without volumes will be stopped and replaced). Any data stored inside the old container’s filesystem (outside a volume) will be lost, but that’s normal in Docker.

## Testing the volume

Let’s assume your volume is named DebianVolume and mounted at /data inside the container.

1. Write to the volume inside the container

Start a shell:

```shell
docker exec -it debian-trixie bash
```

Inside:

```shell
echo "Hello from Debian Trixie!" > /data/test.txt
cat /data/test.txt
```

You should see:

```output
Hello from Debian Trixie!
```

2. Check the volume from another container

Run a temporary container that mounts the same volume:

```shell
docker run --rm -v DebianVolume:/check debian:trixie cat /check/test.txt
```

If it prints the same text, the volume is working ✅

3. Inspect the volume on the host

```shell
docker volume inspect DebianVolume
```

It will show the mountpoint on your host, e.g.:

```output
[
  {
    "Name": "DebianVolume",
    "Mountpoint": "/var/lib/docker/volumes/DebianVolume/_data",
    "Driver": "local"
  }
]

```

You can then check it directly (root access usually required):

```shell
sudo ls /var/lib/docker/volumes/DebianVolume/_data
sudo cat /var/lib/docker/volumes/DebianVolume/_data/test.txt
```

4. Quick test with Compose

If using docker-compose.yml:

```yml
services:
  trixie:
    image: debian:trixie
    container_name: debian-trixie
    command: bash
    stdin_open: true
    tty: true
    volumes:
      - DebianVolume:/data

volumes:
  DebianVolume:

```

Run:

```shell
docker compose exec trixie bash -c "echo 'Testing from Compose!' > /data/compose.txt"
docker compose exec trixie cat /data/compose.txt

```

## Store persistent data for your Debian Trixie container using docker run

Option 1: Store only a /data directory

Simple and clean — just for files you need to share/keep.

```shell
docker run -it --name debian-trixie -v DebianVolume:/data debian:trixie bash
```

Option 2: Store the entire /root home directory

So every time you stop/start the container, your root user’s home files persist.

```shell
docker run -it --name debian-trixie -v DebianVolume:/root debian:trixie bash
```

Option 3: Store /home/user for a non-root user

If you want a normal user:

```shell
docker run -it --name debian-trixie -v DebianVolume:/home/user debian:trixie bash
```

Inside the container, you could then create the user:

```shell
useradd -m user
```

Check volume content

On host:

```shell
docker volume inspect DebianVolume
```

Or mount it in a temporary container:

```shell
docker run --rm -v DebianVolume:/check debian:trixie ls /check
```

## Store persistent data for your Debian Trixie container using docker compose

Set up a Docker Compose file so you don’t have to type docker run each time, and with persistent home directory (/root).

docker-compose.yml:

```yml
version: "3.9"
services:
  trixie:
    image: debian:trixie
    container_name: debian-trixie
    command: bash
    stdin_open: true
    tty: true
    volumes:
      - DebianVolume:/root   # Persistent root home directory

volumes:
  DebianVolume:

```

How to use it

Save the file as `docker-compose.yml`.

Start the container:

```shell
docker compose up -d
```

Enter the container:

```shell
docker exec -it debian-trixie bash
```

Any files you create in /root (like configs, scripts, etc.) will persist because they’re stored in DebianVolume.

✅ This way, even if you docker compose down and later up, your files remain in the volume.

## Options to persist multiple directories

Option 1: Use multiple named volumes (recommended)

Each directory gets its own volume:

```yml
version: "3.9"
services:
  trixie:
    image: debian:trixie
    container_name: debian-trixie
    command: bash
    stdin_open: true
    tty: true
    volumes:
      - RootHome:/root
      - EtcConfig:/etc
      - UserHome:/home/user

volumes:
  RootHome:
  EtcConfig:
  UserHome:

```

👉 This way, each directory is persisted separately.

Option 2: Use one volume mounted in a parent directory

If the directories are inside the same parent, mount the parent instead of each child.

Let’s set up a safe Docker Compose configuration that persists both /root and /home/user in a single volume without breaking the container.

We’ll use a parent folder inside the volume and symlinks inside the container.

docker-compose.yml:

```yml
version: "3.9"
services:
  trixie:
    image: debian:trixie
    container_name: debian-trixie
    command: bash
    stdin_open: true
    tty: true
    volumes:
      - DebianVolume:/persist  # single volume for multiple directories

volumes:
  DebianVolume:

```

Setup inside the container

After starting the container:

```shell
docker compose up -d
docker exec -it debian-trixie bash
```

Inside the container:

Create directories inside the volume

```shell
mkdir -p /persist/root /persist/home
```

Backup existing content just in case

```shell
cp -r /root/* /persist/root/ 2>/dev/null
mkdir -p /persist/home/user
cp -r /home/user/* /persist/home/user 2>/dev/null

```


Remove original directories and link to volume

```shell
rm -rf /root /home/user
ln -s /persist/root /root
ln -s /persist/home/user /home/user

```

✅ How it works

Everything in /root and /home/user is now stored in the single DebianVolume.

The container can be stopped and started without losing data.

The rest of the filesystem remains intact, so the container continues to work normally.

Option 3: Use bind mounts from the host  (NOT A GOOD PRACTICE)

Instead of a Docker-managed volume, you can map multiple host directories:

```yml
volumes:
  - ./root_data:/root
  - ./etc_data:/etc
  - ./user_data:/home/user

```

👉 This gives you full control, and you’ll see the files directly in your host filesystem.

### Make a ready-to-use Dockerfile + Compose setup that automates the symlinks and directory creation

Step 1: Dockerfile

Create a file named `Dockerfile`:

```Dockerfile
FROM debian:trixie

# Create a default user
RUN useradd -m user

# Create a folder to hold persisted directories
RUN mkdir -p /persist/root /persist/home

# Copy an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]

```

Step 2: Entrypoint script

Create a file named `entrypoint.sh` in the same folder:

```bash
#!/bin/bash
set -e

# Backup existing root content if first run
if [ ! -d /persist/root/.backup_done ]; then
    cp -r /root/* /persist/root/ 2>/dev/null || true
    cp -r /home/user/* /persist/home/ 2>/dev/null || true
    touch /persist/root/.backup_done
fi

# Remove original directories and link to volume
rm -rf /root /home/user
ln -s /persist/root /root
ln -s /persist/home /home/user

# Execute the container command
exec "$@"

```

Step 3: Docker Compose

Create `docker-compose.yml`:

```yml
version: "3.9"
services:
  trixie:
    build: .
    container_name: debian-trixie
    stdin_open: true
    tty: true
    volumes:
      - DebianVolume:/persist

volumes:
  DebianVolume:

```

Step 4: Run the container

Build and start:

```shell
docker compose up -d --build
```

Enter the container:

```shell
docker exec -it debian-trixie bash
```

✅ How it works

/persist volume stores both /root and /home/user.

On first start, the script backs up any existing content to the volume.

It replaces /root and /home/user with symlinks pointing to the volume.

Any files you create in these directories persist across container restarts.

### Enhance the Debian Trixie container to include common development tools so it’s ready to use right away.

Step 1: Updated Dockerfile

IT includes a setup so you enter the container directly as user with bash.

```Dockerfile
FROM debian:trixie

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Create a default user with home directory
RUN useradd -m -s /bin/bash user && \
    echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Update system and install common tools
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        sudo \
        bash-completion \
        curl \
        wget \
        git \
        vim \
        nano \
        less \
        unzip \
        net-tools \
        iproute2 \
        ca-certificates \
        gnupg \
        lsb-release \
        software-properties-common \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create persistent folders
RUN mkdir -p /persist/root /persist/home

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]

```

Step 2: Entrypoint script (entrypoint.sh)

No changes needed from the previous version, but let’s make the setup so you enter the container directly as user with bash, no extra su - user needed.

```bash
#!/bin/bash
set -e

# Backup existing content if first run
if [ ! -d /persist/root/.backup_done ]; then
    cp -r /root/* /persist/root/ 2>/dev/null || true
    cp -r /home/user/* /persist/home/ 2>/dev/null || true
    touch /persist/root/.backup_done
fi

# Remove original directories and link to volume
rm -rf /root /home/user
ln -s /persist/root /root
ln -s /persist/home /home/user

# Switch to the user account and execute the command
# If no command is provided, start bash
if [ $# -eq 0 ]; then
    exec su - user
else
    exec su - user -c "$*"
fi

```

Step 3: Docker Compose (docker-compose.yml)

```yml

version: "3.9"
services:
  trixie:
    build: .
    container_name: debian-trixie
    stdin_open: true
    tty: true
    volumes:
      - DebianVolume:/persist

volumes:
  DebianVolume:

```

Step 4: Build and run

```shell
docker compose up -d --build
docker exec -it debian-trixie

# Or use
docker exec -it debian-trixie bash
```

✅ What you get

Persistent /root and /home/user in a single volume (DebianVolume).

The setup remains safe—no volume is mounted to /, so the system files remain intact.

Common development tools pre-installed (sudo, vim, git, curl, wget, etc.).

Clean, minimal Debian Trixie base with an automated setup — no manual linking needed.

You are automatically logged in as user.

You have passwordless sudo, so you can do:

```bash
sudo apt update
sudo apt install htop

```

We can adjust the setup so that every session starts in /home/user (the persisted home directory) instead of /root. This makes it more intuitive for development.

Updated Entrypoint Script (entrypoint.sh):

```shell
#!/bin/bash
set -e

# Backup existing content if first run
if [ ! -d /persist/root/.backup_done ]; then
    cp -r /root/* /persist/root/ 2>/dev/null || true
    cp -r /home/user/* /persist/home/ 2>/dev/null || true
    touch /persist/root/.backup_done
fi

# Remove original directories and link to volume
rm -rf /root /home/user
ln -s /persist/root /root
ln -s /persist/home /home/user

# Switch to the user account and start in /home/user
# If no command is provided, start bash in /home/user
if [ $# -eq 0 ]; then
    exec su - user -c "cd /home/user && exec bash"
else
    exec su - user -c "$*"
fi

```

Easily add multiple startup commands before the interactive shell to `entrypoint.sh`:

```bash

# More code here

# Switch to the user account and start in /home/user
# If no command is provided, start bash in /home/user
if [ $# -eq 0 ]; then
    exec su - user -c 'bash -c "
        cd /home/user
        cat /persist/textfile.txt
        exec bash
    "'
else
    exec su - user -c "$*"
fi

```

Using a separate startup script inside your volume instead of hardcoding multiple commands into `entrypoint.sh`

✅ Advantages

Easier maintenance – you just edit your script (startup.sh) instead of touching the container logic.

Persistence – since the script can live in your mounted volume, your changes survive container rebuilds.

Flexibility – you can add/remove as many commands as you want, without messing with entrypoint.sh.

Perfect 👍 Let’s refactor your `entrypoint.sh` so it supports a pluggable startup script without losing the original behavior.

Here’s the updated version:

```bash
#!/bin/bash
set -e

# Default behavior: switch to "user" account and drop into /home/user
if [ $# -eq 0 ]; then
    if [ -f /persist/startup.sh ]; then
        echo ">>> Found /persist/startup.sh, executing before bash..."
        exec su - user -c "cd /home/user && bash /persist/startup.sh && exec bash"
    else
        exec su - user -c "cd /home/user && exec bash"
    fi
else
    exec su - user -c "$*"
fi

```

In your mounted volume /persist/, create `startup.sh`:

```bash
#!/bin/bash
echo ">>> Running startup commands..."
cat /persist/textfile.txt
echo ">>> Startup done!"

```

Let’s write this step by step for your DebianVolume mounted at /persist.

Scenario 1: startup.sh exists on the host

If you already have startup.sh on your host machine, you need to copy it into the named volume and make it executable before the container uses it.

1. Copy startup.sh into the DebianVolume

```shell
docker run --rm -v DebianVolume:/persist -v $(pwd):/host debian:trixie \
    bash -c "cp /host/startup.sh /persist/"
```

2. Make it executable inside the volume (still from host)

```shell
docker run --rm -v DebianVolume:/persist debian:trixie \
    chmod +x /persist/startup.sh
```

Now /persist/startup.sh will be executable every time you start your container.

Scenario 2: Create startup.sh directly inside the container

If you want to create the file from inside the running container:

1. Enter the container shell

```shell
docker exec -it debian-trixie bash
```

2. Create or edit the file

```shell
nano /persist/startup.sh
# (or use vim, echo, etc.)

```
3. Make it executable inside the container

```shell
chmod +x /persist/startup.sh
```

This modifies the file directly inside DebianVolume, so it will persist across container restarts/rebuilds.

📂 Your setup now

```shell
project/
├── Dockerfile
├── docker-compose.yml
├── entrypoint.sh
└── DebianVolume/          <-- persisted to /persist inside container
    ├── textfile.txt
    └── startup.sh

```


