# Question 1
10.times { |n| (" " * n + "The Flintstones Rock!")}

# Question 2

# no implicit conversion of integer into string
# ONE WAY

puts "the value of 40 + 2 is #{(40 + 2)}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Question 3

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

def factors(number)
  return "not a valid number" if number < 1
  #  we given a number need to find the facotors
factors = (1..number).select { |n| number % n == 0}
factors
end

factors(18)
factors(3)
factors(7)
factors(446)
factors(0)

# bONUS 1
# The purpose of number % divisor == 0 ? is to find if the number is 
# completely divisible the given number to find the facotr

# BONUS 2
# in ruby the last line of the code is writtene unless otherwise
# implicited , so to return the array with all the facors
# 

# Question 4

#  '<<' mutates '+' does not

# in first we are given the array we are working with and we are
# mutating the array 
# in second we are reassigning the array to a different place in memeory
# first solution return a value and has a side effect(mutates given array)
# but the second has the same return value but doesnt touch the array
# so second option is better
# 

# Question 5

# what we can do is pass the limit inside as argument or define it in the
# method as method creates a scope of their own and doesnt have acces
# to the variables outside of it
# 
#REFACTORED CODE



def fib(first_num, second_num,limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1 , 2344432214)
puts "result is #{result}"

# limit is basically the max sum two numbers could reach
# 

# Question 6
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

puts new_answer = mess_with_it(answer)

p answer - 8

# 34
# 

# Question 7

puts munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# yes as the demo hash acts as a pointer to the hash passed in
# when invoking the method.

# Question 8

# paper
# 
# Question 9

# "no"