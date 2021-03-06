require_relative 'restricted_array.rb'
# RestrictedArray can be created using a specified size, or a random size in
# the range of 1-20 will be chosen for you.
# All values are integers in the range of 1-221.
# RestrictedArray cannot be resized.

# Calculates the length of the restricted array. All values are integers.
# The restricted_array is terminated by 'nil' i.e. array[length] = nil
# Time complexity: O(n). N represents the number of elements in the array.
    # The run time will depend on how many elements are in the array
# Space complexity: O(1)  The space needed to store the count doesn't depend on the array size,
#as the count value gets overridden until we reach the final count
def length(array)
  count = 0
  x = 0
  until array[x] == nil
    count += 1
    x += 1
  end
  return count
end

# Prints each integer values in the array
# Time complexity: O(n)N represents the number of elements in the array.
    # The run time will depend on how many elements are in the array
# Space complexity: O(n) N reperesents each output from the array. 
#The space needed for storage depends on how many elements are outputed from the array.
def print_array(array)
  x = 0
  until array[x] == nil
    puts array[x]
  end
end

# For an unsorted array, searches for 'value_to_find'.
# Returns true if found, false otherwise.
# Time complexity: O(n) N represents the number of elements in the array.
    # The run time will depend on how many elements are in the array
# Space complexity: O(1) The program will return true or fall no matter the size of the array.
def search(array, length, value_to_find)
  x = 0
  until array[x] == nil
    return true if array[x] == value_to_find
    x += 1
  end
  return false
end

# Finds and returns the largest integer value the array
# Assumes that the array is not sorted.
# Time complexity: O(n) N represents the number of elements in the array.
    # The run time will depend on how many elements are in the array
# Space complexity: O(1). The program will only return the 
#largest value no matter the size of the array
def find_largest(array, length)
  largest = array[0]
  x = 0
  until array[x] == nil
    largest = array[x] if array[x] > largest
    x += 1
  end
  return largest
  
end

# Finds and returns the smallest integer value in the array
# Assumes that the array is not sorted.
# Time complexity: O(n)
# Space complexity: O(1). The program will only return the 
#smallest value no matter the size of the array
def find_smallest(array, length)
  smallest = array[0]
  x = 0
  until array[x] == nil
    smallest = array[x] if array[x] < smallest
    x += 1
  end
  return smallest
end

# Reverses the values in the integer array in place
# Time complexity: O(n)N represents the number of elements in the array.
    # The run time will depend on how many elements are in the array
# Space complexity: O(n) The space needed for the reverse array depends on the size of the original array.
def reverse(array, length)
  reverse_array = []
  x = 0
  until array[x] == nil
    reverse_array << array[length-(x+1)]
    x += 1
  end
  return reverse_array
end

# For an array sorted in ascending order, searches for 'value_to_find'.
# Returns true if found, false otherwise.
# Time complexity: O(log(n))N represents the number of elements in the array.
    # The run time will depend on how many elements are in the array
# Space complexity: O(1) The program will return true or fall no matter the size of the array.
def binary_search(array, length, value_to_find)
  last = length - 1
  middle = (last / 2)
  length/2.times do
    if array[0] == value_to_find || array[last] == value_to_find
      return true
    elsif array[middle] == value_to_find
      return true
    elsif array[middle] < value_to_find
      middle = (middle + last)/2
    elsif array[middle] > value_to_find
      middle = (middle / 2)
    end
  end
  return false

end
# Helper method provided to sort the array in ascending order
# Implements selection sort
# Time complexity = O(n^2), where n is the number of elements in the array.
# To find the correct value for index 0, a total of (n-1) comparisons are needed.
# To find the correct value for index 1, a total of (n-2) comparisons are needed.
# To find the correct value for index 2, a total of (n-3) comparisons are needed.
# and so on ...
# To find the correct value for index (n-2), a total of 1 comparisons is needed.
# To find the correct value for the last index, a total of 0 comparisons are needed.
# Total number of comparisons = (n-1) + (n-2) + ... 3 + 2 + 1
#                             = (n * (n-1))/2
# This is O(n^2) in Big O terms.
# Space complexity = constant or O(1) since the additional storage needed,
# does not depend on input array size.
def sort(array, length)
  length.times do |index| # outer loop - n elements
    min_index = index # assume index is where the next minimally value is
    temp_index = index+1 # compare with values at index+1 to length-1
    while temp_index < length # inner loop - n-1 elements
      if array[temp_index] < array[min_index] # found a new minimum, update min_index
        min_index = temp_index
      end
      temp_index += 1 # move to next index
    end
    if min_index != index # next minimum value is not at current index, swap
      temp = array[min_index]
      array[min_index] = array[index]
      array[index] = temp
    end
  end
end
## --- END OF METHODS ---
