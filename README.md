# podman_ollama

This is a template only!

1. create volumes for ollama and open-webui
```
$ podman volume create ollama-data
$ podman volume create open-webui-data
```
2. find location of the volumes
```
$ podman volume inspect ollama-data
$ podman volume inspect open-webui-data
```

3. to use you need to replace:

- `ip_address` to your own ip address (ip -4 a/ipconfig)
- `path_to_volume` to the actual path to the volume

4. run `./ollama.sh`
