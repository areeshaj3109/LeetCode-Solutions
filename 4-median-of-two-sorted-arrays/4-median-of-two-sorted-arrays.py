class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        nums3 = []
        sum = 0
        avg = 0
        for i in range(len(nums1)):
            nums3.append(nums1[i])
            
        for i in range(len(nums2)):
            nums3.append(nums2[i])
            
        nums3.sort()
        
        print(nums3)

        if len(nums3)%2 == 1:
            pos = (len(nums3)+1)//2
            return nums3[pos-1]
        else:
            pos = (len(nums3)+1)//2
            return (nums3[pos-1]+nums3[pos])/2