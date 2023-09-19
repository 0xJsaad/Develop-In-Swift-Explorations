/*:
## Your Own Data
 
 Now create (or find) a data set for a bar chart. You might choose some categories that are relevant in your life. Or search online for data that you can represent in a bar chart.

 - callout(Exercise): Make a bar chart using your own data. Remember, you can create a key using the `addKeyItem(withLabel:color:)` function.
 */
makeBarChart()

setYAxis(minimum: -50, maximum: 100)

addBar(withLength: -40, color: .red)
addBar(withLength: -50, color: .red)
addBar(withLength: 83, color: .green)
addBar(withLength: -35, color: .red)
addBar(withLength: 13, color: .green)
addBar(withLength: -15, color: .red)
addBar(withLength: 23, color: .green)
addBar(withLength: 80, color: .green)

addBarLabel("Jan")
addBarLabel("Feb")
addBarLabel("Apr")
addBarLabel("Mar")
addBarLabel("May")
addBarLabel("Jun")
addBarLabel("Jul")
addBarLabel("Aug")

addKeyItem(withLabel: "401k Stocks investments", color: .clear)
addKeyItem(withLabel: "Positive Gains balance of themonth", color: .green)
addKeyItem(withLabel: "Negative Gains balance of the month", color: .red)


/*:
[Previous](@previous)  |  page 7 of 11  |  [Next: Plots](@next)
 */
