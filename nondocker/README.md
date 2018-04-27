# DevOps
## Docker way

![http://dev-random.net/wp-content/uploads/2014/04/bin-bash-extended.sh-600x600.png](http://dev-random.net/wp-content/uploads/2014/04/bin-bash-extended.sh-600x600.png)

## Configure nginx
```bash
(cd scripts && ./nginx-conf.sh)
```
---

## Create daemons
1. Replace <PROJECT_PATH> and <USER_NAME> in systemd/*.service files
2. Execite shell:
```bash
(cd scripts && ./systemd-conf.sh)
```