FROM centos:7
ENV svt_go_version 0.0.1
RUN mkdir /myapp
WORKDIR /myapp
RUN curl -o svt-${svt_go_version}-Linux-x86_64.tar.gz "https://raw.githubusercontent.com/cduser/svt-release/travis_57/svt-${svt_go_version}-Linux-x86_64.tar.gz" && tar xzf "svt-${svt_go_version}-Linux-x86_64.tar.gz"
CMD ["./svt/svt", "http"]
