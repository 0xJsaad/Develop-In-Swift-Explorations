/*:
## Exercise: Displaying Values
 
 On an earlier playground, you had an exercise that involved calculating the space remaining on an iPhone. You were provided the following information:

- The capacity of an iPhone is measured in gigabytes (GB).
- The iPhone in question has 8GB of storage.
- A gigabyte is about 1,000 megabytes (MB).
- The phone already has 3GB of stuff on it.
- One minute of video takes 150MB of space.

 - callout(Exercise): Create a string that tells the user how many minutes of video they can store on the phone. You'll first need to perform the calculation steps, then use string interpolation to display the answer. Your result should look like this:

 `You can record XXX more minutes of video.`
 
 _Hint:_ Do all of your calculations in megabytes.
 */
func howManyMinutesOfVideo(phoneStorageGB: Int, usedStorageGB: Int, videoSizeMB: Int) -> Int {
  // Convert the storage capacity from GB to MB.
  let totalStorageMB = phoneStorageGB * 1000
  let availableStorageMB = totalStorageMB - usedStorageGB * 1000
  let minutesOfVideo = availableStorageMB / videoSizeMB
  return minutesOfVideo
}

let phoneStorageGB = 8
let usedStorageGB = 3
let videoSizeMB = 150

let minutesOfVideo = howManyMinutesOfVideo(phoneStorageGB: phoneStorageGB, usedStorageGB: usedStorageGB, videoSizeMB: videoSizeMB)

print("It will take", (minutesOfVideo), "minutes to fill the remaining storage")

//: [Previous](@previous)  |  page 17 of 18  |  [Next: What Can You Print?](@next)
