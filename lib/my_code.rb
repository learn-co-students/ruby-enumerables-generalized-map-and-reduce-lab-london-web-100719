def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( yield source_array[i] )
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = nil)
  if starting_point == nil
    result = source_array[0]
    i = 1
  else
    i = 0
    result = starting_point
  end
  while i < source_array.length do
    result = yield result, source_array[i]
    i += 1
  end
  return result
end
