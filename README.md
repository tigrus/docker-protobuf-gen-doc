# docker-protobuf-gen-doc
Protobuf docker image with gen doc plugin


## Usage:

```
$ docker run --volume /<project_docs>:/docs --volume /<project_contracts>:/contracts --rm tigrus/protoc-with-gen-doc --doc_out=html,<project_name>.html:/docs/<project_name> -I/contracts/ /contracts/<project_name>.proto
```

## TODO:
Reduce size of image, if possible
