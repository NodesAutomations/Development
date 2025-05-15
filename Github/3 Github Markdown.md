## Github Issues

### Use Task List in Issue
To create a task list, preface list items with a regular space character followed by [ ]. To mark a task as complete, use [x].
```
- [x] #739
- [ ] https://github.com/octo-org/octo-repo/issues/740
- [ ] Add delight to the experience when all tasks are complete :tada:
```

### Link Other Issues
- Additionally you can also create new issues from task list which will also shows if linked issue is open/close.
- you can also drag to reorder task list
- Ref : [Issue](https://github.com/NodesAutomations/Development/issues/4)
```
- [x] #5
- [x] #6
- [x] #7
```

### Automatically close Issue with commit
- User Close #issueNo in commit message 
- so when you push this commit to master branch github will automatically closes the issue
 

## Basic Markdown

Reference : 
- [Github Formatting syntex](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

### Collapsible text or Toggles
<details>
  <summary> This is main title </summary>
  <pre>
  - Line 1
  - Line 2
  - Line 3
</details>
  
```markdown
<details>
<summary>Click to toggle contents of `code`</summary>
  Add Here Whatever YOu want
</details>
```
  
### Use Emoji
- Just Use `:` and start typing emoji name and Popup menu will appear with emoji icon and name 
- [Emoji CheatSheet](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md)

### Callouts

> **Note** First line of text
>
> Another line of text
> Yet more text

> **Warning** Test
> Some important warning
>> **Note**
>> With a nested note

### Tables
Regular Table
 - Cells can vary in width and do not need to be perfectly aligned within columns. There must be at least three hyphens in each column of the header row.
 ```
| Command | Description |
| --- | --- |
| git status | List all new or modified files |
| git diff | Show file differences that haven't been staged |
 ```
| Command | Description |
| --- | --- |
| git status | List all new or modified files |
| git diff | Show file differences that haven't been staged |

Table with Formatting
```
| Command | Description |
| --- | --- |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |
```
  | Command | Description |
| --- | --- |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |

```
| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| git status   | git status     | git status    |
| git diff     | git diff       | git diff      |
```
| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| git status   | git status     | git status    |
| git diff     | git diff       | git diff      |
