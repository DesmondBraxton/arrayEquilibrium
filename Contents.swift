import UIKit

// Return the left most pivot index, basically the first one we see
// It ispossible to have a sum of zero on both sides
// leftMostIndex implies a brute force approach, O(n^2)
// We aren't changing any values in the array
//

let nums = [1,7,3,6,5,6] // The pivot index is the 6 int at index 3

func pivotIndex(_ nums: [Int]) -> Int {
    
    var left = 0
    var right = 0
    var total = nums.reduce(0, +)
    
    for i in 0..<nums.count {
            left = left + nums[i]
            right = total - left
   
            if left - nums[i] == right {
            return i
                }
        }
    
    return -1
}
 //   for i in nums {
 //       rightSum == total -  nums[1]
        
        
  //  }
  //      return -1

  //  }

pivotIndex(nums)
