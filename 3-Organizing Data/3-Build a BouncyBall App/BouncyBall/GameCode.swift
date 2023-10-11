import Foundation

/*
The `setup()` function is called once when the app launches. Without it, your app won't compile.
Use it to set up and start your app.

You can create as many other functions as you want and declare variables and constants
at the top level of the file (outside any function). You can't write any other kind of code,
for example, if statements and for loops, at the top level; they have to be written inside
of a function.
*/

let ball = OvalShape(width: 40, height: 40)

var barriers: [Shape] = [] // Refactoring the second round by adding an array to store the obstacles
var targets: [Shape] = []

// Add a funnel
let funnelPoints = [
    Point(x: 0, y: 50),
    Point(x: 80, y: 50),
    Point(x: 60, y: 0),
    Point(x: 20, y: 0)
]

let funnel = PolygonShape(points: funnelPoints)

fileprivate func setupBall() {
    ball.position = Point(x: 250, y: 400)
    scene.add(ball) // Add the ball to the scene
    ball.hasPhysics = true // The `hasPhysics` property participates in the game engine's physics simulation
    ball.fillColor = .blue // Customize the color of our ball using the `fillColor` property
    ball.onCollision = ballCollided(with:)

    ball.isDraggable = false // To prevent the user from dragging the ball

    scene.trackShape(ball)
    ball.onExitedScene = ballExitedScene
    ball.onTapped = resetGame
    ball.bounciness = 0.6
}

// I've changed the function name from `setupBarrier()` to `addBarrier()`
fileprivate func addBarrier(at position: Point, width: Double, height: Double, angle: Double) {
    // Now, I add parameters to the function to specify width, height, position, and angle
    let barrierPoints = [
        Point(x: 0, y: 0),
        Point(x: 0, y: height),
        Point(x: width, y: height),
        Point(x: width, y: 0)
    ]

    let barrier = PolygonShape(points: barrierPoints)

    barriers.append(barrier)

    // Existing `setupBarrier()` code below with updates for `position` and `angle`
    barrier.position = position
    barrier.hasPhysics = true
    scene.add(barrier)
    barrier.isImmobile = true
    barrier.fillColor = .brown
    barrier.angle = angle
}

fileprivate func setupFunnel() {
    funnel.position = Point(x: 200, y: scene.height - 25)
    scene.add(funnel)
    funnel.onTapped = dropBall // The `onTapped` property is a function where the `dropBall` function will drop the ball
    funnel.fillColor = .lightGray

    funnel.isDraggable = false // This prevents the user from dragging the funnel
}

// Now, the function name changes from `setupTarget()` to `addTarget()`
func addTarget(at position: Point) {
    let targetPoints = [
        Point(x: 10, y: 0),
        Point(x: 0, y: 10),
        Point(x: 10, y: 20),
        Point(x: 20, y: 10)
    ]
    let target = PolygonShape(points: targetPoints)

    targets.append(target)

    // Existing code in the `setupTarget()` function
    target.position = position
    target.hasPhysics = true
    target.isImmobile = true
    target.isImpermeable = false
    target.fillColor = .yellow

    scene.add(target)
    target.name = "target"

    target.isDraggable = true
}

// Handles collisions between the ball and objects
func ballCollided(with otherShape: Shape) {
    if otherShape.name != "target" { return }
    otherShape.fillColor = .green
}

func setup() {
    scene.backgroundColor = .darkGray
    setupBall()

    /// Add an obstacle to the scene.
    addBarrier(at: Point(x: 200, y: 150), width: 80, height: 25, angle: 0.1)

    // Add a funnel to the scene
    setupFunnel()

    // Add an obstacle to the scene
    addBarrier(at: Point(x: 200, y: 150), width: 80, height: 25, angle: 0.1)
    addBarrier(at: Point(x: 100, y: 150), width: 30, height: 15, angle: -0.2)
    addBarrier(at: Point(x: 300, y: 150), width: 100, height: 25, angle: 0.03)
    // Add a target to the scene
    addTarget(at: Point(x: 133, y: 614))
    addTarget(at: Point(x: 111, y: 474))
    addTarget(at: Point(x: 256, y: 280))
    addTarget(at: Point(x: 151, y: 242))
    addTarget(at: Point(x: 165, y: 40)

    resetGame() // To start the game without the ball on the screen

    scene.onShapeMoved = printPosition(of:)
}

// Drop the ball when moving it to the funnel's position.
func dropBall() {
    ball.position = funnel.position

    ball.stopAllMotion() // To stop the ball from escaping
    // Now, `barrier` is an element of `barriers`, so I iterate through it with a loop and add the `isDraggable` property to each obstacle with `false`
    for barrier in barriers {
        barrier.isDraggable = false
    }
    for target in targets {
        target.fillColor = .yellow
    }
}

func ballExitedScene() {
    for barrier in barriers {
        barrier.isDraggable = true
    }
    var hitTargets = 0
    for target in targets {
        if target.fillColor == .green {
            hitTargets += 1
        }
    }
    if hitTargets == targets.count {
        scene.presentAlert(text: "🥳 Pentakill! 🎉", completion: alertDismissed)
    }
}
func alertDismissed() {}

// Reset the game when moving the ball below the scene
// this will unlock the barriers
func resetGame() {
    ball.position = Point(x: 0, y: -80)
}

func printPosition(of shape: Shape) {
    print(shape.position)
}

