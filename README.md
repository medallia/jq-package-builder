# jq-package-builder

Build a RPM and DEB packages for any version of jq

https://github.com/stedolan/jq/releases

## Usage

- Clone this repo
- Build the container

```
docker build -t medallia/jq-plugins-builder .
```

- Compile the packages

```
docker run -it --rm -v ~/:/dist -e VERSION=1.5 -e ITERATION=1 medallia/jq-plugins-builder
```

- This will give two packages

- `jq_1.5-1_amd64.deb`
- `jq-1.5-1.x86_64.rpm`

## Available environment variables

- `VERSION` : REQUIRED / Version of your package
- `ITERATION` : OPTIONAL / Iteration of your package

## Limitation

- It only compiles for x64, but it shouldn't be too hard to make it work for x86 if needed
