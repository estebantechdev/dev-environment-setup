# Export and Import Docker containers

## Export a Docker container and move it to another machine

There are a few ways to export a Docker container and move it to another machine, depending on whether you want the container’s current state or just the image it was built from.

1. Export a Container (with its state)

This captures the container’s filesystem (not the image history, layers (check out the topic writable layers and the commit option of the command docker), or metadata like environment variables).

On the source machine:

```shell
docker export <container_id_or_name> -o container.tar
```

Transfer the file (scp, USB, etc.), then on the target machine:

```shell
docker import container.tar new-container-image:tag
```

👉 This creates a new image from the exported container. You can run it again with:

```shell
docker run -it new-container-image:tag
```

2. Save & Load an Image (preserves metadata)

If you want to preserve the image layers, history, and tags (recommended in most cases):

On the source machine:

```shell
docker save -o myimage.tar myimage:tag
```

Move the myimage.tar file to the target machine, then load it:

```shell
docker load -i myimage.tar
```

3. Push to a Registry (if both machines have network access)

If both machines can access a Docker registry (Docker Hub, GitHub Container Registry, or your private registry):

```shell
docker tag myimage:tag myregistry.com/username/myimage:tag
docker push myregistry.com/username/myimage:tag
```

On the target machine:

```shell
docker pull myregistry.com/username/myimage:tag
```

## How to export and import a container with a volume

Volumes are not included when you docker export or docker save.

Volumes are stored outside the container’s writable layer (usually under **/var/lib/docker/volumes/**), so you need to handle them separately.

Options:

1. Copy volume data manually

Find the volume on the source machine:

```shell
docker volume inspect <volume_name>
```

This will show you the "Mountpoint" path on the host (e.g. **/var/lib/docker/volumes/myvolume/_data)**.

Then you can archive it:

```shell
tar -czf myvolume.tar.gz -C /var/lib/docker/volumes/myvolume/_data .
```

Transfer it to the new machine and restore into a new volume:

```shell
docker volume create myvolume
tar -xzf myvolume.tar.gz -C /var/lib/docker/volumes/myvolume/_data
```

2. Use a temporary container to export volume contents

Instead of touching **/var/lib/docker/volumes** directly, you can mount the volume into a helper container and copy the data:

```shell
docker run --rm -v myvolume:/data -v $(pwd):/backup busybox tar -czf /backup/myvolume.tar.gz -C /data .
```

Now **myvolume.tar.gz** is in your current directory.

Move it to the new machine and restore with:

```shell
docker run --rm -v myvolume:/data -v $(pwd):/backup busybox sh -c "cd /data && tar -xzf /backup/myvolume.tar.gz"
```

3. Use docker cp if the volume is mounted in the container

If your container mounts the volume at **/app/data**, you can copy directly:

```shell
docker cp <container_id>:/app/data ./myvolume_data
```

Transfer and copy back into the new container later:

```shell
docker cp ./myvolume_data <new_container_id>:/app/data
```

## Step-by-step process that will export a container with its attached volumes so you can move everything

Your container is called `mycontainer`

Your image is tagged `myimage:latest`

Your volume is named `myvolume`

Step 1. Save the container image

First, save the image that the container is based on:

```shell
docker commit mycontainer myimage:latest
docker save -o myimage.tar myimage:latest
```

Now **myimage.tar** contains the image.

Step 2. Backup the volume(s)

Let’s create an archive of the volume. If you don’t know the volume name:

```shell
docker inspect mycontainer | grep Source
```

Then backup the data using a helper container (safe method):

```shell
docker run --rm -v myvolume:/data -v $(pwd):/backup busybox \
    tar -czf /backup/myvolume.tar.gz -C /data .
```

Now you have **myvolume.tar.gz**.

Step 3. Transfer to the target machine

Copy both files (myimage.tar and myvolume.tar.gz) to the target machine (via scp, USB, external disk, etc.).

Step 4. Load the image on the new machine

On the target machine:

```shell
docker load -i myimage.tar
```

Step 5. Restore the volume

First create the volume:

```shell
docker volume create myvolume
```

Then extract the backup into it:

```shell
docker run --rm -v myvolume:/data -v $(pwd):/backup busybox \
    tar -xzf /backup/myvolume.tar.gz -C /data
```

Step 6. Run the container with the restored volume

Now you can run the container with the volume attached:

```shell
docker run -d --name mycontainer -v myvolume:/app/data myimage:latest
```

(replace /app/data with the path inside the container where the volume was originally mounted).

### Are this steps restoring changes made to the container on the previous machine?

The answer depends on what kind of changes you mean.

1. Changes made inside the container filesystem

When you docker run a container from an image, Docker gives it a writable layer.

If you modify files inside the container (e.g. install packages, change configs) those changes live only in that writable layer.

If you just docker save the original image, those changes are not included.

But in my steps, I used:

```shell
docker commit mycontainer myimage:latest
```

This creates a new image including all modifications inside the container.

✅ So yes — this preserves changes you made inside the container.

2. Changes stored in volumes

Volumes are stored separately from the container image/layer.

That’s why we backed them up using the busybox tar method.

✅ This preserves your data in volumes as well.

3. What is not preserved

Runtime state (like processes running in memory, environment variables passed at docker run, temporary network connections).

Container metadata (e.g. restart policies, port mappings, environment variables, unless you re-create them with docker run).

So after restoring on the new machine, you’ll have:

The image with all file changes committed.

The volumes with all data restored.

But you’ll need to re-run the container with the same settings (-p, -v, --env, etc.).

⚡ In short:

Filesystem changes? → Saved via docker commit.

Volume data? → Saved via tar backup.

Running state/config? → Not saved, must be re-created manually.

## Export and Import containers using Scripts

Solution 1:

export_container_with_volumes.sh
import_container_with_volumes.sh

✅ What this gives you

Container filesystem changes → saved with docker commit.
Image → saved and loaded.
Volumes → saved as .tar.gz and restored.
Configuration → stored in container_config.json (you can parse more options from it: env vars, port bindings, mounts, restart policy, etc.).

This import script just starts a minimal container; you can extend it to rebuild the exact docker run command using the JSON config.

Solution 2:

import_container_with_volumes (extended).sh

What this restores

✅ Filesystem changes (from docker commit)
✅ Volumes (restored from tar archives)
✅ Environment variables (-e)
✅ Port mappings (-p)
✅ Volume mounts (-v)
✅ Restart policy (--restart)

The container will come up very close to the way it ran on the original machine.
⚡ Important: Some advanced options (networks, capabilities, ulimits, etc.) aren’t yet re-applied — but they can also be parsed from container_config.json if needed.

Solution 3:

import_container_with_volumes (extended 2).sh

Now this script restores:

🗂 Filesystem changes
📦 Volumes
🌐 Ports
🌍 Networks (creates missing ones)
⚙️ Environment variables
🔄 Restart policy
📁 Working directory
🚀 Entrypoint & command

Some special configs (ulimits, device mappings, seccomp profiles, capabilities) aren’t included yet, but they can also be parsed from the JSON if you need them.
For networks: if the container was connected to custom Docker networks, the script tries to recreate them.

Solution 4:

import_container_with_volumes (extended 3).sh

What this now restores

🗂 Filesystem changes (from docker commit)
📦 Volumes (backed up & restored)
🌐 Ports
📍 Networks (creates missing ones)
⚙️ Environment variables
🔄 Restart policy
📁 Working directory
🚀 Entrypoint & CMD overrides
📏 Ulimits (soft/hard resource limits)
🔌 Devices (GPU, USB, serial, etc.)

⚡ With this version, you’re pretty much at 100% faithful restoration of a container, short of some very rare configs (security options, capabilities, sysctls).

Solution 5:

🔹 Now this script restores:
🗂 Filesystem changes (committed to image)
📦 Volumes (tarred & restored)
🌐 Ports
📍 Networks
⚙️ Environment variables
🔄 Restart policy
📁 Working directory
🚀 Entrypoint & CMD overrides
📏 Ulimits
🔌 Devices (GPU, USB, serial, etc.)
🛡 Capabilities (add/drop)
🔒 Security options (AppArmor, seccomp profiles)
⚙️ Sysctls

This is about as close to a 1:1 container migration as you can get with Docker, short of live-migration of processes in memory.

