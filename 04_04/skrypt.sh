#!/bin/bash

volume_name="volume"
password="password"

docker volume create "$volume_name"

echo "To jest przykładowy plik 1." > plik1.txt

docker run --rm -v "$(pwd):/data" -v "$volume_name:/target" alpine sh -c "cd /data && tar czf - *.txt" | tar xzf - -C "$(docker volume inspect --format '{{ .Mountpoint }}' "$volume_name")"

docker run --rm -v "$volume_name:/data" alpine sh -c "cd /data && tar czf - . | gpg --batch --symmetric --passphrase \"$password\" > /data/encrypted.tar.gz.gpg"

docker volume rm "$volume_name"

docker volume create "${volume_name}_encrypted"

docker run --rm -v "${volume_name}_encrypted:/target" -v "$(pwd):/data" alpine sh -c "cd /target && gpg --batch --passphrase \"$password\" --decrypt /data/encrypted.tar.gz.gpg | tar xzf -"

docker run --rm -v "${volume_name}_encrypted:/data" alpine ls /data

docker volume rm "${volume_name}_encrypted"
