# bubble sort
# given an array
# return the sorted array
# each pass checks consecutive elements
# keep checking the entire array until no swaps are done
# return sorted array

def bubble_sort!(array)
  no_swaps = false
  until no_swaps do
    swaps = 0
    0.upto(array.size - 2) do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swaps += 1
      end
    end
    no_swaps = true if swaps == 0
  end
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array

