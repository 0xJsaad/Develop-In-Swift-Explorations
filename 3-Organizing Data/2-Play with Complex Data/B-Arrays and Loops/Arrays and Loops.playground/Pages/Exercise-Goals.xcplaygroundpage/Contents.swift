/*:
## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
 */
let deadliftDayliMax: [Double] = [175.40, 210, 200, 304, 140, 219, 250, 122, 222, 333, 194, 249, 124, 124, 249, 149, 149, 200, 304, 140, 120, 250, 122, 222, 512]

//:  - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func goalAchieved(dailyNumber: Double) -> String {
    let goal = 215.0
    if dailyNumber >= goal {
        return "You've reached your goal! You went abover yout goal of \(goal) by \(dailyNumber - goal)lbs"
    } else {
        return "Unfortunately you did not reach your \(goal)lbs today."
    }
}
//:  - callout(Exercise): Write a `for…in` loop that iterates over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for dailyWeight in deadliftDayliMax {
    print(goalAchieved(dailyNumber: dailyWeight))
}
/*:
[Previous](@previous)  |  page 16 of 18  |  [Next: Exercise: Screening Messages](@next)
 */
