/*:
## Exercise: Making a List
 
 Lists are great. Here are some constants that describe some of the things you’ve learned about strings so far:
 */
let constants = "Declaring string constants"
let unicode = "Unicode characters (😎)"
let combining = "Combining strings using +"
let interpolation = "String interpolation (aka Fill in the Blanks)"
let escaping = "Escape characters for \"special powers\""
let newline = "Making new lines"
//:  - Experiment: Make a new string constant that lists the things you’ve learned about strings, with each item on a new line. Make sure you add the result to the playground page so that you can see the list properly.

let stringConstants = "We started by learning to define strings in a constant."
let stringUnicode = "🍎 After, we were introduced to the amazing emoji world of unicode ☮️."
let stringCombining = stringConstants + stringUnicode // Now we can also combine strings!
let stringInterpolation =  "\(stringCombining) How can we forget about Interpolation of strings."
let stringEscaping = " Lastly we learned how to escape \"new powers unlocked\""
let stringNewLine = "\n"
let story = "\(stringInterpolation)\n\(stringEscaping)\n\(stringNewLine)"
print(story)
/*:
[Previous](@previous)  |  page 14 of 18  |  [Next: Exercise: A Restaurant](@next)
 */
