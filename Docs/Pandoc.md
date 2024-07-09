### Installation

- Directly Download installer from website or Github Repo
- Using Chocolaty `choco install pandoc`

### Check Installation

- Check Version
    
    ```csharp
    pandoc --version
    ```
    
- Converting a file
    
    ```csharp
    pandoc test1.md -f markdown -t html -s -o test1.html
    ```
