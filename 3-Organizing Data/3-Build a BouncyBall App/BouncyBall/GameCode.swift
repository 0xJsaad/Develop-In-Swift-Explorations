import Foundation

/*
The setup() function is called once when the app launches. Without it, your app won't compile.
Use it to set up and start your app.

You can create as many other functions as you want, and declare variables and constants,
at the top level of the file (outside any function). You can't write any other kind of code,
for example if statements and for loops, at the top level; they have to be written inside
of a function.
*/

var barriers: [Shape] = []
var targets: [Shape] = []
let barrierWidth = 100.0
let barrierHeight = 15.0


let barrierPoints = [
    Point(x: 0, y: 0),
    Point(x: 0, y: barrierHeight),
    Point(x: barrierWidth, y: barrierHeight),
    Point(x: barrierWidth, y: 0)
]

let barrier = PolygonShape(points: barrierPoints)
let ball = OvalShape(width: 30, height: 30)
let funnelPoints = [
    Point(x: 0, y: 50),
    Point(x: 80, y: 50),
    Point(x: 60, y: 0),
    Point(x: 20, y: 0)
]

let funnel = PolygonShape(points: funnelPoints)
let targetPoints = [
    Point(x: 10, y: 0),
    Point(x: 0, y: 10),
    Point(x: 10, y: 20),
    Point(x: 20, y: 10)
]

let target = PolygonShape(points: targetPoints)

// ball func

fileprivate func extractedFunc() {
    // Add the ball
    
    ball.position = Point(x: 225, y: 400)
    scene.add(ball)
    ball.hasPhysics = true
    ball.fillColor = .purple
    ball.onCollision = ballCollided(with:)
    scene.trackShape(ball)
    ball.onExitedScene = ballExistedScene
}

// barrier func

fileprivate func addBarrier(at position: Point, width: Double, height: Double, angle: Double) {
    let barrierPoints = [
        Point(x: 0, y: 0),
        Point(x: 0, y: height),
        Point(x: width, y: height),
        Point(x: width, y: 0)
    ]
    
    let barrier = PolygonShape(points: barrierPoints)
    
    // Add a barrier to the scene.
    
    barrier.position = position
    barrier.hasPhysics = true
    scene.add(barrier)
    
    // removing gravity from the bar
    
    barrier.isImmobile = true
    barrier.fillColor = .cyan
    barrier.isImpermeable = true
    
    // tilting the barrier
    barrier.angle = angle
    
    barriers.append(barrier)
}

// setup ball func


fileprivate func setupTarget(at position: Point) {
    // Add a funnel to the scene.
    
    funnel.position = Point(x: 200, y: scene.height - 25)
    barrier.hasPhysics = true
    scene.add(funnel)
    funnel.onTapped = dropBall
    ball.stopActions()
    ball.isDraggable = false
    funnel.fillColor = .black
    scene.trackShape(ball)
    ball.onExitedScene = ballExistedScene
    ball.onTapped = resetGame
    ball.bounciness = 0.5
}


fileprivate func extractedFunc3() {
    target.position = Point(x: 200, y: 400)
    target.hasPhysics = true
    target.isImmobile = true
    target.isImpermeable = false
    target.fillColor = .black
    scene.add(target)
}


func setupTarget() {
    extractedFunc3()
}


func setup() {
    extractedFunc()
    addBarrier(at: Point(x: 200, y: 150), width: 80, height: 25, angle: 0.1)
    setupTarget()
    extractedFunc3()
    target.name = "target"
    resetGame()
//  target.isDraggable = false
    scene.onShapeMoved = printPosition(of:)
}

func dropBall() {
    ball.position = funnel.position
    ball.stopAllMotion()
    
    for barrier in barriers {
        barrier.isDraggable = false
    }
}

func ballCollided(with otherShape: Shape) {
    if otherShape.name != "target" { return }
    
    otherShape.fillColor = .orange
    
}

func ballExistedScene() {
    
    barrier.isDraggable = true
    for barrier in barriers {
        barrier.isDraggable = true
    }
}

// Resets the game by moving the ball below the scene,
// which will unlock the barriers.

func resetGame() {
    ball.position = Point(x: 0, y: -80)
    
}

func printPosition(of shape: Shape) {
    print(shape.position)
}
