/*:
## Exercise: Freight Elevator
 
 In this exercise, you're using code to decide whether it's safe to add items to a basket that will be delivered to your treehouse by a pulley.

 - callout(Exercise): 
 Create three constants for items of different weights that you'd like to bring up to your fort: one less than 100, one between 100 and 1000, and one over 1000.
 */
let piano = 400
let barbell = 50
let dirtBike = 3000
let chair = 20
let Tv = 100
/*:
 - callout(Exercise): 
 A lightweight treehouse pulley is already created below. But you've decided that you want to be able to lift, say, a small horse or piano up to your fort, so you’re installing a second pulley with a much bigger basket.\
 Create a second pulley that has a higher capacity and can hold at least ten times the weight of the `ricketyRope`.
 */
var ricketyRope = TreehousePulley(weightCapacity: 200)
var ricketyRope2 = TreehousePulley(weightCapacity: ricketyRope.weightCapacity * 10)
var ricketyRope3 = TreehousePulley(weightCapacity: ricketyRope2.weightCapacity * 5)

/*:
 - callout(Exercise): 
 Use the `TreehousePulley` type's `addLoadToBasket` method to add the items you defined above. Add three of the lightest item, two of the middle-weight item, and one of the heaviest item. Add the items to the lightweight pulley first, using the `canHandleAdditionalLoad` method to check whether the item would overload the pulley, then move on to your stronger pulley when the first is fully loaded.\
 If your pulleys together aren't enough to hold all the items you need, create a third super heavy-duty pulley to finish the job.
 */
if ricketyRope.canHandleAdditionalLoad(Tv + barbell + chair) {
    ricketyRope.addLoadToBasket(loadWeight: Tv + barbell + chair)
} else if ricketyRope2.canHandleAdditionalLoad(Tv + barbell + chair) {
    ricketyRope2.addLoadToBasket(loadWeight: Tv + barbell + chair)
} else if ricketyRope3.canHandleAdditionalLoad(Tv + barbell + chair) {
    ricketyRope3.addLoadToBasket(loadWeight: Tv + barbell + chair)
} else {
    print("Light Items: None of the ropes can handle this amount of weight.")
}

if ricketyRope.canHandleAdditionalLoad(Tv + barbell + chair + piano) {
    ricketyRope.addLoadToBasket(loadWeight: Tv + barbell + chair + piano)
} else if ricketyRope2.canHandleAdditionalLoad(Tv + barbell + chair + piano) {
    ricketyRope2.addLoadToBasket(loadWeight: Tv + barbell + chair + piano)
} else if ricketyRope3.canHandleAdditionalLoad(Tv + barbell + chair + piano) {
    ricketyRope3.addLoadToBasket(loadWeight: Tv + barbell + chair + piano)
} else {
    print("Light and Medium items together: None of the ropes can handle this amount of weight.")
}

if ricketyRope.canHandleAdditionalLoad(Tv + barbell + chair + piano + dirtBike) {
    ricketyRope.addLoadToBasket(loadWeight: Tv + barbell + chair + piano + dirtBike)
} else if ricketyRope2.canHandleAdditionalLoad(Tv + barbell + chair + piano + dirtBike) {
    ricketyRope2.addLoadToBasket(loadWeight: Tv + barbell + chair + piano + dirtBike)
} else if ricketyRope3.canHandleAdditionalLoad(Tv + barbell + chair + piano + dirtBike) {
    ricketyRope3.addLoadToBasket(loadWeight: Tv + barbell + chair + piano + dirtBike)
} else {
    print("All together: None of the ropes can handle this amount of weight.")
}


/*:
[Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Identity](@next)
 */
