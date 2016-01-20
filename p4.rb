def find_median_sorted_arrays(nums1, nums2)
  merged = []
  p1 = 0
  p2 = 0
  
  while p1 < nums1.length && p2 < nums2.length
    if  nums1[p1] < nums2[p2]
      merged << nums1[p1]
      p1 += 1
    else
      merged << nums2[p2]
      p2 += 1
    end
  end

  if p1 < nums1.length
    merged.concat nums1[p1..-1]
  end

  if p2 < nums2.length
    merged.concat nums2[p2..-1]
  end

  if merged.length % 2 == 0
    (merged[merged.length / 2 - 1] + merged[merged.length / 2]) / 2.0
  else
    merged[merged.length / 2]
  end
end

puts find_median_sorted_arrays([], [2,3])