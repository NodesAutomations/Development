### Delete Folder using CMD

```xml
rd /s /q "C:\Users\Ryzen2600x\Downloads"
```

solve “could not find this item” while deleting folder


### Basic Commands

### Change the directory (folder) in Command Prompt

- The first command from the list is `CD` (Change Directory). This command enables you to change the current directory or, in other words, to navigate to another folder from your PC. For instance, the command `CD\\` takes you to the top of the directory tree.
- If you need to go to a specific folder from this drive run the command "CD Folder." The subfolders must be separated by a backslash character: "\." For instance, when you need to access the System32 folder located in "C:\Windows," type `cd windows\\system32`
- ==When you need to go one folder up, use the `cd` command.==

### Change the drive in Command Prompt

- To access another drive, type the drive's letter, followed by ":". For instance, if you wanted to change the drive from "C:" to "D:", you should type "d:"
- To change the drive and the directory at the same time, use the cd command, followed by the "/d" switch. The "/d" parameter is used to change the current drive to a specific folder from another disk volume.

For instance, if you are now on the "D:" drive and you want to go back to the Windows folder from the"C:" drive, you should type "cd /d C:\Windows"

### View the contents of a directory in Command Prompt

- You can view the contents of a folder by using a command called "dir"

### Create a new directory with Command Prompt

- You can make a new folder using the MKDIR (Make Directory) or the MD command. The syntax of these commands is "MKDIR Folder" or "MD Folder."
