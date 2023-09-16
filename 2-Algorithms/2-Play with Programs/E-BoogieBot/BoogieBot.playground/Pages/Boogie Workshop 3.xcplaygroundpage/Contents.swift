/*:
## Boogie Workshop
 
 This page is here for you to create your own routines.
 
 Remember the moves:
 
- `leftArmUp()`, `leftArmDown()`, `rightArmUp()`, `rightArmDown()`
- `leftLegUp()`, `leftLegDown()`, `rightLegUp()`, `rightLegDown()`
- `shakeItLeft()`, `shakeItRight()`, `shakeItCenter()`
- `jumpUp()`, `jumpDown()`
- `fabulize()`, `defabulize()`
 
 To sign your work:
 
 `setBotTitle("My Awesome Dance")`\
 `setBotSubtitle("By The Boogiemaster")`
 */
startBot()
startRecording()
setBotTitle("Happy Birthday Enzo")
setBotSubtitle("Tu Padrino")
func BirthdayDance() {
    fabulize()
    leftArmUp()
    shakeItRight()
    leftArmDown()
    shakeItCenter()
    jumpUp()
    jumpDown()
}
func BackwardsBirthdayDance() {
    fabulize()
    rightArmUp()
    shakeItLeft()
    rightArmDown()
    shakeItCenter()
    jumpUp()
    jumpDown()
}

BirthdayDance()
BackwardsBirthdayDance()

/*:
Continue with your creativity.

[Previous](@previous)  |  page 12 of 13  |  [Next: Boogie Workshop](@next)
 */
