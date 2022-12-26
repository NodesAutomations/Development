## Output files

### *.dll
- Main Assembly File , An assembly file is a portable executable format which .NET can run on Windows
- Contains Main Compiled Code in Intermediate Language
- For .Net Framework Compile Convert Code from User Selected language to intermediate Language

### *.xml
- Contains Summary Details of Every Function and Class
- Without *.xml File user won't able to See Summary Details when using Library

### *.pdb
- Debugger File require for Debugging
- Without Debugger File user won't be able to step through inside library Code
- You Can Remove *.pbd File from Release Build to Prevent User To Step into Code
- To Disable *.pbd file go to Project Property-->Compile-->Advance Compile Options-->**Set Generate debug info** to None.
- Reference [Stackoverflow](https://stackoverflow.com/questions/2371032/c-sharp-release-version-has-still-pdb-file)

### *.deps.json
The `deps.json` file is a dependencies manifest. It can be used to configure dynamic linking to assemblies that come from packages.
