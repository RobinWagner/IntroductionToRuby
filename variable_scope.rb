# 1 Create a local variable and modify it at an inner scope

# a) Re-assign the variable to something else

x = 4

loop do 
  x = 'hey there'
  break
end

puts x   # => x changes value to re-assigned value

# b) Call a method that doesn't mutate the caller

def no_mutate(arr)
  arr.uniq
end

my_arr = [1, 2, 2, 3]
no_mutate(my_arr)
puts my_arr # => my_arr is unchanged ([1, 2, 2, 3]) (similar to 'passed by value')

# c) Call a method that mutates the caller

def no_mutate(arr)
  arr.uniq!
end

my_arr = [1, 2, 2, 3]
no_mutate(my_arr)
puts my_arr # => my_arr is changed ([1, 2, 3]) since destructive method has been used

# 2 Create a local variable at an inner scope and try to reference it in the outer scope

def inner_scope(param)
  param = 12
end

# puts param # => error since variable is undefined in outer scope (only defined in inner scope)

# 3 How do variable scope rules pertain to methods?

x = “hi”

def my_method
  puts x
end

my_method # inner scope does not know about local variable defined in outer scope => error
