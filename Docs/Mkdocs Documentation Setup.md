# mkdocs Documentation Setup

## Installation

- Install Python `choco install python --version=3.7.6.20200110`
- Install Pip
- Install mkdocs `pip install mkdocs`
- Install Material Theme For mkdocs `pip install mkdocs-material`

## Test Setup

- Create Sample Project Using `mkdocs new projectName` Command
- Build Project using `mkdocs build` Command
- Build Project and Start Server `mkdocs serve`
- Help `mkdocs help`
- User mkdocs.yaml file for Configuration
- set `theme : 'material'` to Test Material Theme

### Sample Config File

Reference:

- [mkdocs Material Theme](https://github.com/squidfunk/mkdocs-material)

```yaml
# Project information
site_name: 'Material for MkDocs'
site_description: 'A Material Design theme for MkDocs'
site_author: 'Martin Donath'
site_url: '<https://squidfunk.github.io/mkdocs-material/>'

# Repository
repo_name: 'squidfunk/mkdocs-material'
repo_url: '<https://github.com/squidfunk/mkdocs-material>'

# Copyright
copyright: 'Copyright &copy; 2016 - 2017 Martin Donath'

# Configuration
theme:
  name: 'material'
  language: 'en'
  palette:
    primary: 'indigo'
    accent: 'indigo'
  font:
    text: 'Roboto'
    code: 'Roboto Mono'

# Customization
extra:
  manifest: 'manifest.webmanifest'
  social:
    - type: 'github'
      link: '<https://github.com/squidfunk>'
    - type: 'twitter'
      link: '<https://twitter.com/squidfunk>'
    - type: 'linkedin'
      link: '<https://www.linkedin.com/in/squidfunk>'

# Google Analytics
google_analytics:
  - 'UA-XXXXXXXX-X'
  - 'auto'

# Extensions
markdown_extensions:
  - admonition
  - codehilite:
      guess_lang: false
  - toc:
      permalink: true

```

## Hosting

### Options

### GitHub Pages

- Free to Use for Public Repo
- Reliable
- Can Host Static HTML

### Read The Docs

- Free to Use for Public Repo
- Less Reliable than GitHub
- Can Host Multiple Version
- Integration with BitBucket and GitHub
- Material Theme Not Supported
- Very Easy to SetUp and use

### Preferred Hosting : GitHub

### Reasons

- More Reliable
- Support Material Theme
- Can Host Any Static Site

### Steps

- Create Public Repo On GitHub
- Create Seperate branch For Github pages **(gh-pages)**
- Enable Github Pages From MainRepo-->Settings-->GitHub pages
- GitHub Automatically Host your Static HTML Based on your Content in gh-deploy branch

### Set Up Custom Domain

- Add File "CNAME" with `subDomain.CustomDomain.com` to **gh-pages**
- Go to Your Host Provider
    - Add CNAME with Host `subDomain.CustomDomain.com` and Points to `vivekkpatel.github.io`
    - for HTTP Add Following A Records with Host"`@`"
        - 185.199.108.153
        - 185.199.109.153
        - 185.199.110.153
        - 185.199.111.153
- On Your Repo Settings Click on `Enforce Https`
