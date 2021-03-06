# sort method: Sort the array elements in ascending order
def bubble_sort_loop(array)
  return array if array.size < 2

  loop do
    swap = false
    (array.size - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
    break unless swap
  end
  array
end

def bubble_sort_loop_notime(array)
  return array if array.size < 2

  loop do
    i = 0
    swap = false
    while i < array.size - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
      i += 1
    end
    break unless swap
  end
  array
end

def bubble_sort_while(array)
  return array if array.size <= 1

  swap = true
  while swap
    swap = false
    (array.size - 1).times do |x|
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
        swap = true
      end
    end
  end
  array
end

def bubble_sort_while_notime(array)
  return array if array.size <= 1

  swap = true
  while swap
    x = 0
    swap = false
    while x < array.length - 1
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
        swap = true
      end
      x += 1
    end
  end
  array
end

def bubble_sort(array)
  array.each do
    index = 0
    count = 0
    while index < array.length - 1
      array[index], array[index + 1] = array[index + 1], array[index] if array[index] > array[index + 1]
      index += 1
      count += 1
    end
    break if count.zero?
  end
end

# p [5, 7, 4, 2, 6].sort
# print bubble_sort([5, 7, 4, 2, 6])
