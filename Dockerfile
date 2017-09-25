FROM tigrus/protoc
MAINTAINER Nikolay Fominykh <nikolayfn@gmail.com>
RUN apk update && apk add git
RUN apk add qt5-qtwebkit-dev
RUN apk add make g++
RUN git clone https://github.com/pseudomuto/protoc-gen-doc
WORKDIR protoc-gen-doc
RUN /usr/lib/qt5/bin/qmake
RUN make
RUN ln -s protoc-gen-doc /bin/protoc-gen-doc
