# Your Code Here

def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length do
    new_array.push ( yield(source_array[i]) )
    i += 1
  end

  return new_array
end
  

def reduce(source_array, starting_point=nil)
  if starting_point
    aggregator = starting_point
    i = 0
  else
    aggregator = source_array[0]
    i = 1
  end

  while i < source_array.length
    aggregator = yield(aggregator, source_array[i]) # returns a single value
    i += 1
  end

  return aggregator
end
