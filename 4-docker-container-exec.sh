# masuk ke container
docker container exec -i -t [nama-container] /bin/bash

# PS D:\Programming\Belajar Docker> docker container exec -i -t contoh-redis /bin/bash
# root@a3542374f131:/data# ls
# root@a3542374f131:/data# pwd
# /data
# root@a3542374f131:/data# cd /
# root@a3542374f131:/# ls
# bin  boot  data  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
# root@a3542374f131:/# redis cli
# bash: redis: command not found
# root@a3542374f131:/# redis-cli
# 127.0.0.1:6379> set juang "Halo Juang"
# OK
# 127.0.0.1:6379> get juang
# "Halo Juang"
# 127.0.0.1:6379>