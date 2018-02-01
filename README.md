# DevOps

![https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Devops-toolchain.svg/220px-Devops-toolchain.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Devops-toolchain.svg/220px-Devops-toolchain.svg.png)

## Configure nginx
1. Replace <SERVER_NAME> to your_hostname.com in nginx/*.conf files
2. Execute shell:
```bash
(cd nginx && ./run.sh)
```

## Create daemons
1. Replace <PROJECT_PATH> and <USER_NAME> in systemd/*.service files
2. Execite shell:
```bash
(cd systemd && ./run.sh)
```