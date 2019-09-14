def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length

    new_array[i] = yield(source_array[i])

    i += 1

  end

  return new_array

end

def reduce(source_array, starting_point = 0)

  new_var = 0
  i = 0

  if starting_point

    new_var += starting_point

  end

  while i < source_array.length

    if source_array[i].is_a? Integer

      new_var += yield(source_array[i], starting_point = 0)

    elsif !!source_array[i] == source_array[i]

      if source_array[i]

        new_var = true

      else

        new_var = false

      end

    end

    i += 1

  end

  return new_var

end
