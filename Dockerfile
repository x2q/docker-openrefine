FROM phusion/baseimage
MAINTAINER x2q, x2q@x2q.net
RUN apt-get update -qq && apt-get dist-upgrade -qq -y
RUN apt-get install -qq -y --no-install-recommends wget openjdk-7-jre
RUN wget "https://github.com/OpenRefine/OpenRefine/releases/download/2.6-beta.1/openrefine-linux-2.6-beta.1.tar.gz"
RUN tar xf openrefine-linux-2.6-beta.1.tar.gz && rm openrefine*gz && mv openrefine-* /opt/openrefine
VOLUME ["/data"]
ENTRYPOINT /opt/openrefine/refine
ADD refine.ini /opt/openrefine/refine.ini
EXPOSE 33333/tcp
