def map(source_array)
  
  new_array = []
  i = 0 

  while i < source_array.length do 
   
   new_array[i] = yield(source_array[i])
   i += 1

 end
 
 new_array

end

def reduce(source_array, starting_point = nil)
  if starting_point
    value = starting_point
    i = 0
  else 
    value  = source_array[0]
    i = 1
  end
while i < source_array.length 
  value = yield(value, source_array[i])
  i += 1
end

value
end