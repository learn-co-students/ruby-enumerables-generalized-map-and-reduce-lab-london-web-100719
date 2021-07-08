# Your Code Here
def map(source_array)
  return_array = []
  i = 0
  while i < source_array.length do
    return_array.push(yield(source_array[i]))
    i += 1
  end
  return_array
end



def reduce(source_array, starting_value = nil)
  if starting_value
    return_value = starting_value
    i = 0
  else
    return_value = source_array[0]
    i = 1
  end
  while i < source_array.length
    return_value = yield(return_value, source_array[i])
    i += 1
  end
  return_value
end

