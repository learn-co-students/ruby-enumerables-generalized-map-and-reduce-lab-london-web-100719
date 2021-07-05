def map(source_array)
  destination_array = []
  i = 0
  
  while i < source_array.length do
    destination_array.push(yield(source_array[i]))
    i += 1
  end
  
  destination_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    result = starting_point
    i = 0
  else
    result = source_array[0]
    i = 1
  end
  
  while i < source_array.length do
      result = yield(result, source_array[i])
      i += 1
  end
  
  result
end