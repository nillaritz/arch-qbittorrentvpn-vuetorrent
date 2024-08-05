## Arch-qBittorrent-VueTorrent

Automates building and publishing a Docker image for qBittorrent with VueTorrent Web UI.
The base image is `binhex/arch-qbittorrentvpn` and so far only copies the latest release 
for VueTorrent to `/vuetorrent` in the container.

## Conditions for a new Docker image to be built

Every 2 hours, a Github Action workflow checks the following conditions to determine if a new Docker image should be built:
* A new release of [VueTorrent](https://github.com/VueTorrent/VueTorrent) exists
* A new release of `binhex/arch-qbittorrentvpn:latest` exists in the Github Container Registry
