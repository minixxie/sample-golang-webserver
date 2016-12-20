FROM minixxie/golang:1.7

ADD . /usr/src/myapp
RUN cd /usr/src/myapp && go build -o main main.go && rm -rf *.* .git Dockerfile LICENSE
WORKDIR /usr/src/myapp
ENV VIRTUAL_HOST sample-golang-webserver.test.com
EXPOSE 80
ENTRYPOINT ["/usr/src/myapp/main"]
