# Regular Expression

## What it is?
- It's pattern matching language used to find and extract text
- for example to find/match all dates in text we can use `\d{4}-\d{2}-\d{2}` format to match Data: YYYY-MM-DD pattern
- Use Case
  - Check validity fo user input
    - like if user given input is valid email id, licensekey)
    - If given data contain specific info like string contain numbers or symbols
    - Find and Replace text
    - Split Text
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

## Regex Cheat Sheet
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
## Find and replace
```csharp
string text = "Price: 2500";
string result = Regex.Replace(text, @"\d", "*");

Console.WriteLine(result);
```
```csharp
Price: ****
```
## Split
```csharp
string text = "apple, mango; banana|grape";
string[] parts = Regex.Split(text, @"[,;|]");

foreach (string p in parts)
{
    Console.WriteLine(p);
}
```
```
apple
 mango
 banana
grape
```
## Groups
- A group is a part of your regex wrapped in parentheses
- In this pattern `(\d{3})-(\d{3})-(\d{4})`
  - Group 0 = Full match equivalent to match.value
  - Group 1 = first 3 digits
  - Group 2 = next 3 digits
  - Group 3 = last 4 digits

```csharp
 string text = "Phone: 987-654-3210";
 string pattern = @"(\d{3})-(\d{3})-(\d{4})";

 Match match = Regex.Match(text, pattern);

 if (match.Success)
 {
     Console.WriteLine("Full Match: " + match.Value);
     Console.WriteLine("Group 1: " + match.Groups[1].Value);
     Console.WriteLine("Group 2: " + match.Groups[2].Value);
     Console.WriteLine("Group 3: " + match.Groups[3].Value);
 }
```
```
Full Match: 987-654-3210
Group 1: 987
Group 2: 654
Group 3: 3210
```

## Named Groups
- Similar to groups but you can use specific names from each groups to make it more readable

```csharp
string text = "Phone: 987-654-3210";
//string pattern = @"(\d{3})-(\d{3})-(\d{4})";
string pattern = @"(?<area>\d{3})-(?<prefix>\d{3})-(?<line>\d{4})";

Match match = Regex.Match(text, pattern);

if (match.Success)
{
    Console.WriteLine("Full Match: " + match.Value);
    Console.WriteLine(match.Groups["area"].Value);   // 987
    Console.WriteLine(match.Groups["prefix"].Value); // 654
    Console.WriteLine(match.Groups["line"].Value);   // 3210
}
```

