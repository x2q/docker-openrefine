docker-openrefine
=================

Dockerfile for running OpenRefine.

To start it:

Make a container you can use to host your data
```
docker run -v /data/openrefine --name data-openrefine busybox true
```

Build your openrefine container
```
docker build -t openrefine github.com/x2q/docker-openrefine
```

Run your openrefine container
```
docker run --volumes-from data-openrefine -p 33333 --name openrefine openrefine
```
