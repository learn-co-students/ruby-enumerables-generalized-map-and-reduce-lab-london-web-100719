# Your Code Here

def map(array)
  yield
end

map([1, 2, 3, -9]) do |n|
  n *= -1
end
