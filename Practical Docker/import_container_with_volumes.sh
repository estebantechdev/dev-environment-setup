#!/bin/bash

# import_container_with_volumes.sh <export_dir>

# Includes
# Container filesystem changes → saved with docker commit.
# Image → saved and loaded.
# Volumes → saved as .tar.gz and restored.
# Configuration → stored in container_config.json (you can parse more options from it: env vars, port bindings, mounts, restart policy, etc.).

# Right now, the import script just starts a minimal container; you can extend it to rebuild the exact `docker run` command using the JSON config.

set -e
EXPORT_DIR=$1
CONFIG="$EXPORT_DIR/container_config.json"

echo "[*] Loading image..."
docker load -i "$EXPORT_DIR"/*_image.tar

echo "[*] Restoring volumes..."
for VOLFILE in "$EXPORT_DIR"/*.tar.gz; do
    VOLNAME=$(basename "$VOLFILE" .tar.gz)
    echo "   - Restoring $VOLNAME..."
    docker volume create "$VOLNAME" >/dev/null
    docker run --rm -v "$VOLNAME":/data -v "$EXPORT_DIR":/backup busybox \
        tar -xzf /backup/${VOLNAME}.tar.gz -C /data
done

echo "[*] Preparing to recreate container..."
NAME=$(jq -r '.[0].Name' "$CONFIG" | sed 's/\///')
IMAGE=$(jq -r '.[0].Config.Image' "$CONFIG")
PORTS=$(jq -r '.[0].HostConfig.PortBindings | keys[]?' "$CONFIG" | xargs)

# Minimal recreation (extend as needed)
echo "[*] Recreating container $NAME from $IMAGE..."
docker run -d --name "$NAME" "$IMAGE"

echo "[+] Import complete. Adjust container run options if needed."

exit 99
