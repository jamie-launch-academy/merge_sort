def mergesort(list)
  # This says, if the array size is 1, stop doing recursion
  return list if list.size <= 1
  # This is the mid point of the array for each recursion
  mid = list.size / 2
  # This splits each array with the left most occurances
  left  = list[0, mid]
  # This splits each array with the right most occurances
  right = list[mid, list.size]
  # This takes the method created below, and keeps doing it until there are arrays of 1
  merge(mergesort(left), mergesort(right))
end

# This is what merges each number
def merge(left, right)
  # Create an empty array to move the new array into
  sorted = []
  # Keep processing until the left of the right is empty
  until left.empty? or right.empty?
    # If the first number in the left is higher then the first in the right, shift it into the new array
    if left.first <= right.first
      sorted << left.shift
    # If not, move the first right item into the array
    else
      sorted << right.shift
    end
  end
  # Merge everything together into one array
  sorted.concat(left).concat(right)
end

list = [13,17,27,25,4,1,7]

mergesort(list)
