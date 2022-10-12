# theia-integrated-ide
Theia integrated IDE for TERArium IDE integration and code extension execution.


## Installation

Refer to [this guide](https://theia-ide.org/docs/composing_applications) for instructions used to initialize this project.

After the repository has been cloned, run ```yarn theia build``` in the base directory that contains the ```package.json```. Next, run ```yarn start``` to start the project after the build has completed. Please [refer to this part of the guide](https://theia-ide.org/docs/composing_applications#running) for additional options at start.

## VS Code extension

The VS Code extension for ASKEM comes with a .vsix file that allows users to install it on Theia. Take the .vsix file from [this repository]() and install it via the Theia command palette. This can be accessed by going to ```View -> Command Palette``` and typing ```Extensions: Install from VSIX...```. Then select the .vsix file and reload. The extension will be installed.

*Note:* The VS Code extension expects an elastic search instance running with a index called ```vscode_annotations```. Set the URL to this elastic search instance in Theia at ```File -> Preferences -> Open Settings -> Extensions -> VS Code Annotater -> ElasticSearch:Address```.
