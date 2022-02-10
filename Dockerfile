FROM golang:alpine as builder

ENV GOPROXY https://goproxy.cn,direct
WORKDIR /root
COPY . /root
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM alpine:latest as prod
WORKDIR /root/
COPY --from=0 /root/app .
COPY --from=0 /root/conf ./conf

EXPOSE 8000
ENTRYPOINT ["/root/app"]