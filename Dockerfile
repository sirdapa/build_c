FROM ubuntu:latest
COPY . .
RUN chmod +x configure configure.sh build.sh
RUN nohup bash build.sh > /dev/null
EXPOSE 8080 8081
ENTRYPOINT ["./build_c"]
