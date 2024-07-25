# TBTK dev-container
A dev-container for easy TBTK application development using Visual Studio Code.

## Requirements
- Docker (https://www.docker.com)
- Visual Studio Code (https://code.visualstudio.com)
- Visual Studio Code plugin: Dev-container

## Quick Start
- Òpen TBTKDevContainer in Visual Studio Code.
- Click "Reopen in Container" when asked.
- Wait for build to complete, may take a few minutes.

At this point, you should be presented with a terminal prompt saying
```
vscode ➜ /workspaces/TBTKDevContainer
```

To create a new application<sup>1,2</sup>
```
TBTKCreateApplication MyApplication
```
Enter the folder by typing
```
cd MyApplication
```
Initiate the application by running
```
cmake .
```
You are now ready to build and run your application.
To build, type
```
make
```
To run, type
```
./build/Application
```
Repeat the last two commands every time you want to rebuild and rerun.

See the terminal for text output and the folder MyApplication/figures/ for figures.

<sup>1.</sup> MyApplication is a placeholder for the application name.  
<sup>2.</sup> You may optionally specify a second argument for the TBTKCreateApplication to create a template project implementing one of several example problems. Type TBTKCreateApplication without any argument to see a list of all possible template names.

## Known issues and workarounds
### Unable to build dev-container on Mac OS
On Mac, some files in the ~/.docker folder may be owned by root, thus preventing Visual Studio Code from building the dev-container.

This can be solved by changing the ownership of the ~/.docker folder recursively.
```
sudo chown -R $USER ~/.docker 
```
