# Your Code Here

def map(source_array)
 
  new = [];
  i = 0;
  
  while i < source_array.length do
    n=source_array[i];
    new.push(yield (n));
    i += 1;
  end
  
  new
  
end

# expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
# it "returns true when a truthy value is present" do
# source_array = [ false, nil, nil, nil, true]
# expect(reduce(source_array){|memo, n| memo || n}).to eq(true)

def reduce(source_array, starting_value=0)
 
  i=0;
  new = starting_value;
 
  while i < source_array.length
    element=source_array[i];
    new=yield(new, element);
    i+=1;
  end
  if (new==0) then true else new end;
end
