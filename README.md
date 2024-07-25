# TBTK dev-container
A dev-container for easy TBTK application development using Visual Studio Code.

## Requirements
- Docker (https://www.docker.com)
- Visual Studio Code (https://code.visualstudio.com)
- Visual Studio Code plugin: Dev-container

## Known issues and workarounds
### Unable to build dev-container on Mac OS
On Mac, some files in the ~/.docker folder may be owned by root, thus preventing Visual Studio Code from building the dev-container.

This can be solved by changing the ownership of the ~/.docker folder recursively.
```
sudo chown -R $USER ~/.docker 
```
