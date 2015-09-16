# docker-gen-hosts

Based upon [Jason Wilder's docker-gen](https://github.com/jwilder/docker-gen), this script maintain up-to-date your hosts file with all the docker containers' IP address.
If an env variable DOMAIN_NAME is available for a container, it will be used as an additional name. It's even possible to add multiple names, DOMAIN_NAME being a slash(/)-separated list of domain names.

## Installation
```
git clone https://github.com/vincentlepot/docker-gen-hosts
```

## Usage
```
cd docker-gen-hosts
sudo ./docker-gen -notify="bash script.sh"  -watch hostfile.tmpl hostfile
```
