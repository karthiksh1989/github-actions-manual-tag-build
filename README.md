# Github Actions Manual Build For Specific Tag

This is a simple project to run GitHub actions manually for a specific tag.

## How to use

Create a new tag and go to the Actions -> Manual Docker Build, click Run workflow, type Which tag to build, and push the button "Run workflow"

The docker image with the corresponding tag will be built and pushed to the Docker Hub registry.

## Test tagged images

```bash
docker run vensder/github-actions-tag-build:v1.6
v1.6
docker run vensder/github-actions-tag-build:v1.5
v1.5
docker run vensder/github-actions-tag-build:v1.4
Unable to find image 'vensder/github-actions-tag-build:v1.4' locally
v1.4: Pulling from vensder/github-actions-tag-build
b47142c740ba: Pull complete
Digest: sha256:6e468ac7357345bb5c30afe2f11bf9b5f5d8ee661a4e0b2f3f5a94ce8051dce4
Status: Downloaded newer image for vensder/github-actions-tag-build:v1.4
v1.4
```
