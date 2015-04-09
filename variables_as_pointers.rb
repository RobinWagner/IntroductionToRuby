a = 'hi there'
b = a
a.gsub!(' ', '_')
puts b # => b has been modified since the gsub! method mutates the caller

a = 'hi there'
b = a
a = [1, 2, 3]
puts b # => b has not been modified since the = method does not mutate the caller
