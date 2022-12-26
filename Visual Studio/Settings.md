### Just My Code

- Just My Code is a Visual Studio debugging feature that automatically steps over calls to system, framework, and other non-user code.
- Tools-->Options-->Debugging-->General-->**Enable Just My Code**
- **Enable Just My Code** is a global setting that applies to all Visual Studio projects in all languages.
- In .NET projects, Just My Code uses symbol (*.pdb) files and program optimizations to classify user and non-user code. The .NET debugger considers optimized binaries and non-loaded *.pdb files to be non-user code.
