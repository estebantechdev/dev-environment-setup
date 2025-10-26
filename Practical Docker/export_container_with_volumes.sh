#!/bin/env bash

# export_container_with_volumes.sh <container_name>

# Includes
# Container filesystem changes → saved with docker commit.
# Image → saved and loaded.
# Volumes → saved as .tar.gz and restored.
# Configuration → stored in container_config.json (you can parse more options from it: env vars, port bindings, mounts, restart policy, etc.).

# Right now, the import script just starts a minimal container; you can extend it to rebuild the exact `docker run` command using the JSON config.

set -e
CONTAINER=$1
EXPORT_DIR="./${CONTAINER}_export"

mkdir -p "$EXPORT_DIR"

echo "[*] Committing container filesystem..."
docker commit "$CONTAINER" "${CONTAINER}_image:latest"

echo "[*] Saving image..."
docker save -o "$EXPORT_DIR/${CONTAINER}_image.tar" "${CONTAINER}_image:latest"

echo "[*] Exporting volumes..."
# Find volume names from container inspect
VOLUMES=$(docker inspect -f '{{range .Mounts}}{{.Name}} {{end}}' "$CONTAINER")

for VOL in $VOLUMES; do
    echo "   - Exporting volume $VOL..."
    docker run --rm -v "$VOL":/data -v "$EXPORT_DIR":/backup busybox \
        tar -czf /backup/${VOL}.tar.gz -C /data .
done

echo "[*] Exporting container configuration..."
docker inspect "$CONTAINER" > "$EXPORT_DIR/container_config.json"

echo "[+] Export complete: $EXPORT_DIR"

exit 99
