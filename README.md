# docker-gen-hosts

Based upon [Jason Wilder's docker-gen](https://github.com/jwilder/docker-gen), this script maintain up-to-date your hosts file with all the docker containers' IP address.
If an env variable DOMAIN_NAME is available for a container, it will be used as an additional name. It's even possible to add multiple names, DOMAIN_NAME being a slash(/)-separated list of domain names.

## Usage
```
docker pull zibok/docker-gen-hosts
docker run -d --restart=always -v /etc/hosts:/generated_hostfile -v /var/run/docker.sock:/var/run/docker.sock --name docker-gen-hosts zibok/docker-gen-hosts
```
