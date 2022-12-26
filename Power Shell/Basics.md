## Overview

As you probably know, **PowerShell is Microsoft's latest Windows operating system (OS) shell and scripting tool**. A *shell* is a program that provides a user interface for the OS. When we're talking about PowerShell, the "shell" part usually refers to its *command-line interface (CLI)*. A CLI is a basic user interface that lets you enter a command (or a series of commands) at a prompt.

At first, a CLI might not seem as efficient as a graphical user interface (GUI) because you have to type in commands, making sure of spelling, spacing, quotes, etc. However, command shells have always supported some form of batch execution, which is also called *scripting*. A script is simply a list of commands stored in a text file you can execute on demand. PowerShell is no exception—although PowerShell is an excellent CLI, it becomes even more flexible with the use of scripts. A PowerShell script is simply a text file with a .ps1 extension that contains a list of commands PowerShell should execute.

However, PowerShell's *secure by default* philosophy prevents all scripts from running, so double-clicking a PowerShell script from Windows Explorer won't execute it. Also, PowerShell doesn't execute scripts from the current directory.

## Setup

### **Install Windows PowerShell.**

If you have Windows 7 or later, you don't need to install PowerShell because it comes preinstalled with the OS. If you're using Windows Vista or earlier, you need to download and install PowerShell.

### Set PowerShell's execution policy.

PowerShell is secure by default. The first implication of this philosophy is that PowerShell won't execute scripts until you explicitly give it permission to do so.

PowerShell has four execution policies that govern how it should execute scripts:

- **Restricted**. PowerShell won't run any scripts. This is PowerShell's default execution policy.
- **AllSigned**. PowerShell will only run scripts that are signed with a digital signature. If you run a script signed by a publisher PowerShell hasn't seen before, PowerShell will ask whether you trust the script's publisher.
- <mark style="background-color:#FFFF99;color:black">**RemoteSigned**. PowerShell won’t run scripts downloaded from the Internet unless they have a digital signature, but scripts not downloaded from the Internet will run without prompting. If a script has a digital signature, PowerShell will prompt you before it runs a script from a publisher it hasn’t seen before.</mark>
- **Unrestricted**. PowerShell ignores digital signatures but will still prompt you before running a script downloaded from the Internet.

To display the current execution policy, you need to enter the command

```
Get-ExecutionPolicy

```

To set the execution policy, enter the command

```
Set-ExecutionPolicy policy

```

> One thing that's important to understand about execution policies is the meaning of the phrase "downloaded from the Internet." In Windows, this  phrase means that the file has an alternative data stream that indicates the file was downloaded from the Internet zone. To unblock a script,  right-click the .ps1 file, choose Properties, then click the Unblock  button.
> 

Recommend setting for the execution policy is `RemoteSigned` because this execution policy lets you write and run scripts on your own computer without having to sign them with a code-signing certificate. You'll still be prevented from running a script downloaded from the Internet unless you explicitly unblock it first. To set the `RemoteSigned` execution policy, enter the following command at a PowerShell prompt:

```
Set-ExecutionPolicy RemoteSigned

```

### Run your PowerShell scripts, keeping a few important details in mind.

After configuring the execution policy, you can run PowerShell scripts. To run a script, open a PowerShell window, type the script's name (with or without the .ps1 extension) followed by the script's parameters (if any), and press Enter. In keeping with PowerShell's secure by default philosophy, double-clicking a .ps1 file from Windows Explorer opens the script in Notepad rather than executing the script with PowerShell.

To explicitly run a script from the current directory, you must prefix the script's name with .\ or ./ so that PowerShell understands you intend to run it from the current location. For example, suppose the directory C:\Scripts isn't in the Path and the following script, named HelloWorld.ps1, exists in C:\Scripts:

```
Write-Host "Hello, world"
Read-Host "Press Enter to continue"

```

If you enter these commands at the PowerShell prompt

```
PS C:\\> Set-Location C:\\Scripts
PS C:\\Scripts> HelloWorld

```

PowerShell won't run HelloWorld.ps1, even though the current location is C:\Scripts. (Note that I included the prompts you'd see, for demonstration purposes. You wouldn't type these prompts when entering the commands.) Instead of the second command, you need to type one of the following commands:

```
PS C:\\Scripts> .\\HelloWorld
PS C:\\Scripts> ./HelloWorld
//Run script using path
PS C:\> & "C:\Program Files\Scripts\HelloWorld"
```

## Sample Code

```powershell
$message = Read-Host -Prompt 'Message from user'
Write-Output "$message"
Read-Host "Press Enter to continue
```
