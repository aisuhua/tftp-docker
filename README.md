# TFTP

## Prepare

- Change `data/bios/x86_64/pxelinux.cfg/default`
- Change `data/efi/x86_64/grub.cfg`
- Get the vmlinuz and initrd.img files from ISO, and copy to `data/bios/x86_64/images` and `data/efi/x86_64/images` 

## Run

### Docker

```sh
docker run --rm --net host -v "$(pwd)/data":/data aisuhua/tftp:latest
```

### Docker Compose

```sh
docker-compose up
```

## Refs

- https://git.davepedu.com/dave/docker-tftpd
- https://github.com/3x3cut0r/docker/blob/main/tftpd-hpa/Dockerfile
- [TFTP-hpa not logging in a docker container](https://serverfault.com/questions/879453/tftp-hpa-not-logging-in-a-docker-container)
