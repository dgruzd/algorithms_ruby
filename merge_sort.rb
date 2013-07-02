#!/usr/bin/env ruby


input = [9,5,10,3,7,4,8,1,2,6]
p input

def mergesort(arr)
  middle = arr.length/2

  if arr.length <= 1
    return arr
  else
    left = arr[0,middle]
    right = arr[middle..-1]

    left = mergesort(left)
    right = mergesort(right)
    result = merge(left, right)
    return result
  end
end

def merge(left,right)
  result = []
  while left.length > 0 && right.length > 0
    if left.first <= right.first
      result << left.delete_at(0)
    else
      result << right.delete_at(0)
    end
  end
  result += left if left.length > 0
  result += right if right.length > 0

  return result
end

p mergesort(input)
