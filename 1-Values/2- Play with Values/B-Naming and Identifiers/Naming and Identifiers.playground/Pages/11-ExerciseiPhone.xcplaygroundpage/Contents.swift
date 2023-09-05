/*:
## Exercise: What Fits on Your iPhone?
 
 In this exercise, you'll figure out the answer to the timeless question: How much stuff can I fit on my iPhone?

 Unlike the previous exercises, no code will be provided. But here are a few things you’ll need to know:
 
 
- iPhone storage capacity is measured in **gigabytes** (GB).
- The iPhone in question has 8GB of storage.
- A gigabyte is about **1000 megabytes** (MB).
- The phone already has **3GB** of stuff on it.
- **One minute** of video takes **150MB** of storage.

 - callout(Exercise): How many minutes of video will it take to fill the phone?\
 _Hint_: Do all of your calculations in megabytes (MB).
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

print("It will take", minutesOfVideo, "minutes to fill the remaining storage")
