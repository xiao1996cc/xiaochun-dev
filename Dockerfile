FROM php:7.3

ENV TZ=Asia/Shanghai

WORKDIR /usr/src/app

RUN php -v

RUN echo  "ci demo" > ci_demo.txt \
    && tar -czvf cidemo.tar.gz ci_demo.txt \
    && mkdir -p /ci/package \
    && mv cidemo.tar.gz /ci/package