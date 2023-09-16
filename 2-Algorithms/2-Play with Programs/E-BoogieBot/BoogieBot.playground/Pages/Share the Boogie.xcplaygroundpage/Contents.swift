/*:
## Share the Boogie
 
 BoogieBot has one final feature.
 
 Besides watching your BoogieBot moves in the live view, you can save an animated GIF of your work so it’s easy to share with your friends.
 
 To do this, add `startRecording()` right after you start your bot:
 */
startBot()
startRecording()
/*:
 Then add your routine below. When BoogieBot gets to the end of the dance, a Save button appears. Click the button to save your dance routine as an animated GIF.

 Remember, once BoogieBot gets to the end of the routine, it will stop. You can use Editor > Execute Playground to see the moves again. Have fun!
 */
// If you're going to send it, sign it.
setBotTitle("The Apple x MDC Dance")
setBotSubtitle("https://github.com/0xJsaad")
// Start the dance!
func myMDCxAppleDance() {
    fabulize()
    leftArmUp()
    rightArmUp()
    
    leftLegUp()
    rightLegUp()
    leftLegDown()
    rightLegDown()
    shakeItLeft()
    shakeItRight()
    shakeItCenter()
    jumpUp()
    jumpDown()
    
    leftArmDown()
    rightArmDown()
    defabulize()
}
func myMDCxAppleDanceMirror() {
    fabulize()
    rightArmUp()
    leftArmUp()
    
    rightLegUp()
    leftLegUp()
    rightLegDown()
    leftLegDown()
    shakeItRight()
    shakeItLeft()
    shakeItCenter()
    jumpUp()
    jumpDown()
    
    rightArmDown()
    leftArmDown()
    defabulize()
}

myMDCxAppleDance()
myMDCxAppleDanceMirror()

// 0xJs [ https://github.com/0xJsaad ] 

/*:
Next, find out a new term for the work you’ve been doing. 

[Previous](@previous)  |  page 7 of 13  |  [Next: Algorithms](@next)
 */
