# frozen_string_literal: true

def bubble_sort(arr)
  arr_sort = arr.sort
  while arr != arr_sort
    (0..arr.length - 2).each do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
  end
  print arr
end

# bubble_sort([4, 3, 78, 2, 0, 2])

# bubble_sort_by
def bubble_sort_by(arr)
  (0..arr.length - 2).each do |i|
    comparison = yield arr[i], arr[i + 1]
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if comparison.positive?
  end
  p arr
end
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
