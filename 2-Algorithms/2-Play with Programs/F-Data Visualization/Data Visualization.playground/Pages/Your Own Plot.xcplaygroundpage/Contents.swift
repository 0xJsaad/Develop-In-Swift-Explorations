/*:
## Your Own Data
 
 Now it's time to gather some data for a scatter plot of your own making. What relationships are you curious about? You could ask your friends for their shoe size and their height. You could look online for data on your favorite sports players. (Is there a correlation between striking out and hitting home runs?) Maybe you're interested in economic data, investment data, or something entirely silly. It's all fair game.

 - callout(Exercise): Make a plot using your own data. Remember, you can create a key using the `addKeyItem(withLabel:color:)` function.
 */
makePlot()

setXAxis(minimum: -10, maximum: 10)
setYAxis(minimum: -10, maximum: 10)

addPointAt(x: 1, y: 2, color: .red)
addPointAt(x: 3, y: 1, color: .green)
addPointAt(x: 3, y: 4, color: .green)
addPointAt(x: 2, y: 6, color: .green)
addPointAt(x: 4, y: 5, color: .green)
addPointAt(x: 7, y: 5, color: .green)
addPointAt(x: -8, y: 2, color: .blue)
addPointAt(x: 10, y: -6, color: .red)
addPointAt(x: -8, y: -9, color: .red)

addKeyItem(withLabel: "New School Wall Colors", color: .clear)
addKeyItem(withLabel: "Votes in favor of painting the walls red", color: .red)
addKeyItem(withLabel: "Voters in favor of painting the wall green", color: .green)


/*:
[Previous](@previous)  |  page 10 of 11  |  [Next: Wrapping Up](@next)
 */
