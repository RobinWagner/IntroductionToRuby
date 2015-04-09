def my_method(arr)
  arr.uniq
end

my_arr = [1, 2, 2, 3]
my_method(my_arr)
puts my_arr   # => does not change the value of my_arr since method did not mutate the caller

def my_other_method(arr)
  arr.uniq!
end

my_other_method(my_arr)
puts my_arr # => changes the value of my_arr since method does mutate the caller
