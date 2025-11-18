### Start Project with External Program for class libraries
- Visual studio has option to specify external program for class library testing
- Debug > Start Action > Start External Program
```
C:\Program Files\Autodesk\AutoCAD 2015\acad.exe
```

### Pass Command Line Arguments to exe
- Debug > Start Option > Command Line Arguments
- You can pass absolute file paths or relative paths
- By Default Directory is your Debug/Release Folder
- use can use `..\` to move up directory in file path for example below
```
"..\..\Sample.dwg" /nologo /b "..\..\StartUp.scr"
```
