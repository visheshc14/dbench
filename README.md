# `dbench`

Dockerized `dbench` image Inspired by [`leeliu/dbench`](https://github.com/leeliu/dbench/blob/master/docker-entrypoint.sh)

Improvements over other `dbench`

- `FIO_IOENGINE` - being able to set the `ioengine` can [prevent weird situations where direct looks faster than buffered writes](https://serverfault.com/questions/918896/ssd-iops-on-linux-direct-much-faster-than-buffered-fio)
- Specific `alpine` version - this `dbench` release is tagged to specific alpine versions (ex. `dbench:alpine-3.14.2`)
>>>>>>> dcfe4fe (feat: add basic Dockerfile and images)
