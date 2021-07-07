def map(array)
  new_array = []
  array.each do |item|
    new_array.push(yield(item))
  end
  return new_array
end 

def reduce(array, starting_value=0)
  if [true, false].include? array[0]
    starting_value = false
  end
  value_so_far = starting_value
  array.each do |item|
    value_so_far = yield(value_so_far, item)
  end
  return value_so_far
end
