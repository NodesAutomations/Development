# Regular Expression

## What it is?
- It's pattern matching language used to find and extract text
- for example to find/match all dates in text we can use `\d{4}-\d{2}-\d{2}` format to match Data: YYYY-MM-DD pattern
- Use Case
  - Check validity fo user input
    - like if user given input is valid email id, licensekey)
    - If given data contain specific info like string contain numbers or symbols
  - Data extraction using pattern matching

## How to use it?
- Use [Regexr](https://regexr.com/) website for testing
- Here is sample code to find all numbers from string
- If we only use `\d` it will print individual number separately like `4,2,5,0,0,9,9,9`
- That extra `+` sign allows whole number till next space

```csharp
string text = "My numbers are 42, 500 and 999";
string pattern = @"\d+";

MatchCollection matches = Regex.Matches(text, pattern);

foreach (Match m in matches)
{
    Console.WriteLine(m.Value);
}
```
```
42
500
999
```


## Pattern

```
.       - Any Character Except New Line
\d      - Digit (0-9)
\D      - Not a Digit (0-9)
\w      - Word Character (a-z, A-Z, 0-9, _)
\W      - Not a Word Character
\s      - Whitespace (space, tab, newline)
\S      - Not Whitespace (space, tab, newline)

\b      - Word Boundary
\B      - Not a Word Boundary
^       - Beginning of a String
$       - End of a String

[]      - Matches Characters in brackets
[^ ]    - Matches Characters NOT in brackets
|       - Either Or
( )     - Group

Quantifiers:
*       - 0 or More
+       - 1 or More
?       - 0 or One
{3}     - Exact Number
{3,4}   - Range of Numbers (Minimum, Maximum)


#### Sample Regexs ####

[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+

### youtube
https://www.youtube.com/watch?v=sa-TUpSx1JA&t=652s
```
