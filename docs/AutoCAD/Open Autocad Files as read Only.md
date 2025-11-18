### Create Visual Basic Script File to Open Selected Autocad Files as read Only

```
On Error Resume Next
dim cmd_arg
set cmd_arg=wscript.Arguments
Dim acadApp
Set acadApp = GetObject(, "AutoCAD.Application")
If Err Then
Err.Clear
Set acadApp = CreateObject("AutoCAD.Application")
End if
acadApp.visible=True
acadApp.WindowState = normal
acadApp.Documents.Open cmd_arg(0), True
```

### Steps

- Save Above Script in `C:\Users\**yourusername**\AppData\Roaming\Microsoft\Windows\SendTo` Folder
- To use, right click on the drawing in the directory, select “Send To” then “OpenReadOnly.vbs”

### Modification for ZWCAD

```
On Error Resume Next
dim cmd_arg
set cmd_arg=wscript.Arguments
Dim acadApp
Set acadApp = GetObject(, "zwcad.Application")
If Err Then
Err.Clear
Set acadApp = CreateObject("zwcad.Application")
End if
acadApp.visible=True
acadApp.WindowState = normal
acadApp.Documents.Open cmd_arg(0), True
```
