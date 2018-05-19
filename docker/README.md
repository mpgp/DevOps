# DevOps

## Docker way

![https://www.brianweet.com/assets/docker-blog-1/docker-logo.png](https://www.brianweet.com/assets/docker-blog-1/docker-logo.png)

---

## Install

- [https://docs.docker.com/install/](https://docs.docker.com/install/)
- [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

---

## Configure

```bash
sudo cp -rf ./env/* /
systemctl enable /etc/systemd/system/docker
systemctl start /etc/systemd/system/docker
```
---

## Startup

```bash
docker-compose up --build

# If u want to detach this procces, u can use -d option:
docker-compose up --build -d

# If u want clear previous build, u can use --force-recreate option:
docker-compose up --force-recreate --build
```

---

## Remove containers

```bash
docker rm $(docker ps -a -q)
```

---

## Remove images

```bash
docker rmi $(docker images -a -q)
```
---

### Quickstart

*
Naviga

c70a176484864eab80cfa5dd9c8ac82c