# Question 1

a = "forty two"
b = "forty two"
c = a

puts a.object_id #matches 'c'
puts b.object_id # differerent that 'a'
puts c.object_id # same as 'a'

# Question 2

a = 42
b = 42
c = a

puts a.object_id #same
puts b.object_id #same
puts c.object_id #same

# Question 3

# 1.pumpkins
# becasuse += reassigns the string to a new one in memory so the original
# is unaffected
# 2. "pumpkinsrutabaga"
# '<<' mutates the string so the given is changed.

#   Question 4
#   1. my_string = "pumpkinsrutabaga"
#   2. ['pumpkins']

# Question 5

# 1. "pumpkins"
# 2. ['pumpkins', 'rutabaga']

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# param nit be mutated but input be converted so param has the same
# value as the out put required
# 
# Question 6
def color_valid(color)
  color == "blue" || color == "green"
end
