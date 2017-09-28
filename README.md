# json2hcl
[![](https://images.microbadger.com/badges/version/fxinnovation/json2hcl.svg)](https://microbadger.com/images/fxinnovation/json2hcl "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/fxinnovation/json2hcl.svg)](https://microbadger.com/images/fxinnovation/json2hcl "Get your own image badge on microbadger.com")
## Description
This image contains json2hcl. json2hcl is a tool that can convert json to hcl and vice versa.

This container is made from scratch which makes it very lightweight.

## Tags
Since this is a simple tool usally used for linting, we do publish a latest tag.
Since this container only contains the binary, we will follow the release tags of the application

## Usage
```
echo "$VARIABLE_WITH_JSON_OR_HCL" | docker run --rm -i fxinnovation/json2hcl:[TAG] [OPTIONS]
```

## Labels
We set labels on our images with additional information on the image. we follow the guidelines defined at http://label-schema.org/. Visit their website for more information about those labels.

## Comments & Issues
If you have comments or detect an issue, please be advised we don't check the docker hub comments. You can always contact us through the repository.
