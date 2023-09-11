/*:
## Exercise: Verbing Your Noun
 
 Remember back to the Functions playground when you rewrote “Row, row, row your boat”? In that playground, the functions were all very specific. To change the first line of the verse, you had to rewrite the function.
 
 Functions that can take arguments can be much more general. 

 - callout(Exercise): Write a function that returns a sentence like “Row, row, row your boat” when given a verb and a noun argument. The function should look like this when you call it:\
 `let line = openingLine(verb: "Row", noun: "Boat")`
 */
func openingLineExercise(verb: String, noun: String) -> String {
    return "Row, row, row your \(noun). Gently down the \(verb)."
}

let lineExercise: String = openingLineExercise(verb: "Row", noun: "Boat")
print(lineExercise)
var lineExerciseStorer = 0
while lineExerciseStorer < 2 {
    print(lineExercise)
    lineExerciseStorer += 1
}

/*:
[Previous](@previous)  |  page 15 of 18  |  [Next: Exercise: Using Return Values](@next)
 */
