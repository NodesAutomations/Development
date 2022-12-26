## Breakpoints

### Regular Breakpoints

- Shortcut : <kbd>F9</kbd>
- Symbol : *Red Circle*
- Hit Every Time Program Come at That Specific Line
- You Can Active or Deactivate Breakpoint without Removing it

### Breakpoints with Actions

- Symbol : *Red Dimond*
- Hit Every time Program Come At That Specific Line
- Purpose : Print Message when That Breakpoint is Hit
- Code : Think it Like String interpolation Code without $ and Quotes
- example : `for Loop i={ i } , Sum = { sum }`

### Breakpoints with Conditions

- Symbol: Plus sign
- Hit Only when Condition is Met
- Code= like If Conditional Statement
- example : `i = 0` or `i mod 2 = 0`

## You can debug any method from the Immediate Window at any time

Let’s say you’re debugging something, and a method returns a strange result. You might want to execute that method again to find out how you got this result, but you’re already past that point in the code. With the Immediate Window, that’s not an issue. You can place a breakpoint in the method that you want to debug and call it in the Immediate Window. As soon as you hit the breakpoint, you can go ahead and investigate the issue.

![image](https://user-images.githubusercontent.com/60865708/209535667-239452d6-d7f7-4f12-8707-6fac55489ba9.png)

**Note that you can also use the [Run to a cursor location](https://docs.microsoft.com/en-us/visualstudio/debugger/navigating-through-code-with-the-debugger#:~:text=Run%20to%20a%20cursor%20location,like%20setting%20a%20temporary%20breakpoint.) (Ctrl + Shift + F10) feature to go back to any line of code in Visual Studio (in the same scope).** Then, step into methods with F11 and debug as usual.

## Method access rules don’t apply for the Immediate Window

In most cases, anything you write in the Immediate window acts the same as if you wrote it in the code. But **there’s a difference when it comes to class accessibility rules – they don’t apply in the Immediate window.** You can call private, protected, and internal members that are not accessible in regular code. In the following example, the GetDiscountForVip() method is private, but I can still call it in the Immediate Window.

![image](https://user-images.githubusercontent.com/60865708/209535720-e637e0cc-a7b3-42fa-ac53-4713f1c36465.png)

IntelliSense still works as usual, though, and will only show the public methods.

## Evaluate with no side effects

Evaluating an expression in the Immediate Window can cause side effects. Variable values can change, and methods can be called. You can interact with a database, with files, and with the network. You can do anything you want, just like in regular code. This behavior isn’t obvious, and not something you always want.

For example, consider this class:

If you evaluate `Foo()` in the Immediate Window, `number` will increase, and the application state will change.

![image](https://user-images.githubusercontent.com/60865708/209535772-a2f48671-3a96-4018-82de-8322c2fb1193.png)

If that’s not something you want, you can avoid it. Just add the `, nse` (no side effects) postfix to an expression, and it will evaluate without changing the application state.

![image](https://user-images.githubusercontent.com/60865708/209535798-0e07e011-7260-48fe-9b82-4ea7153addca.png)

As you may discover, “no side effects” doesn’t work for all expressions. In some cases, it’s impossible to evaluate an expression without side effects. For example, you can’t make a network request in this mode because there’s no way to guarantee that it won’t have side effects.

## Access special variables – $exception, $returnvalue, and $user

Visual Studio uses some special variables during debugging, and the Immediate window can show you their value.

- `$exception` evaluates the currently thrown exception. It’s available at the point the exception is thrown, and also in the catch clause if it’s caught. That’s extremely useful in cases that you didn’t add the `Exception` parameter in the `catch` clause.

![image](https://user-images.githubusercontent.com/60865708/209536140-f8eaee13-5443-4870-9958-a75d7721cb5b.png)

- `$returnvalue` shows the return value of the currently returned method. This is very useful if you didn’t assign that return value to a variable. In the example below, `cashier.PriceAfterDiscount()` returned 11. Note that you have to break on the method’s execution line and then step over (with F10) that line of code for `$returnvalue` to work. If you stepped into the method (with F11), then `$returnvalue` will be available when you step out. This is the time to make a note of that value because it will be gone as soon as you continue to the next line of code.

![image](https://user-images.githubusercontent.com/60865708/209536163-8778bc22-0462-4a76-b90a-808f96c52f8b.png)

$user shows the current OS user and process information. This includes the machine name, the process privileges, and some other security-related details.
