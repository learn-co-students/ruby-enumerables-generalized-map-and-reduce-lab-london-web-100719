# Your Code Here
def map(array)
  
  new_array = []
  
  array.length.times do |i|
    new_array.push yield(array[i])
  end
  
  new_array
end 

def reduce(array, start = nil)
  
  if start
    new_value = start 
    i = 0 
  else
    new_value = array[0]
    i = 1 
  end 
  
  while i < array.length
    new_value = yield(new_value, array[i])
    i += 1
  end 
  
  new_value
end