### What it is?
- Github copilot has option to provide custom instructions in separate markdown file
- Custom instruction enable you to define and automatically apply the guidelines and rules for code generation and code review
- Github also allow you to generate prompt files in markdown to share with other or use as reference for other prompt



### How to create?
- You can define custom instruction in
  -  `.github/copilot-instructions.md` for general instructions for your workspace. These instructions are automatically included in every chat request
  -  `.instructions.md` for instructions for specific tasks. 
- If you specify both types of instruction files, both are included in the chat request. No particular order or priority is applied to the instructions. Make sure to avoid conflicting instructions in the files.

### How it works?
- Instructions defined in your .github folder and in your settings are appllied to every request but not for code completion
- so they should focus on your code style or give understanding of your code base
