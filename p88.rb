# encoding:utf-8

def merge(nums1, m, nums2, n)
  0.upto(n-1).each do |idx_n|
    nums1[m + idx_n] = nums2[idx_n]
    insert_sort(nums1, m + idx_n)
  end
  nums1
end

def insert_sort(nums, length)
  (length).downto(1).each do |idx|
    if nums[idx] < nums[idx - 1]
      nums[idx], nums[idx - 1] = nums[idx - 1], nums[idx]
    end
  end
end