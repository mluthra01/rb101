# Question 1
numbers = [1, 2, 2, 3]
numbers.uniq

# puts numbers

# ANSWER
[1,2,2,3]

# Question 2
#Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name

# ANSWER
# 1. != means not equal to it can be used in loops or to show the
# logic for inequality
# for example :
# while i != array.length
# or
# name != last_name

# 2. !user_name will flip the boolean value of the variable

# 3. words.uniq with a '!' will make it destructive that means it will mutate the 
# words array permanently

# 4. ternary operator '?' before something represents the action to 
# perform if the condtional is true

# 5. it represents the condtion on which the conditional is evaluated on

# 6. this will turn a variable to return a boolean value even though it 
# has a different value.

# QUESTION 3
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
# advice['important'] = 'urgent'
# alternate 
advice.gsub!('important', 'urgent')
# puts advice

# QUESTION 4

# 1. numbers.delete_at(1)
# delete the element at that index
numbers = [1, 2, 3, 4, 5, 1]
numbers.delete_at(1)
# puts numbers

#2. numbers.delete(1)
#find the value in the array and delete all of its occurences.
# DESTRUCTIVE
numbers = [1, 2, 3, 4, 5, 1]
numbers.delete(1)
# puts numbers

# Question 5
# Programmatically determine if 42 lies between 10 and 100.
(10..100).include?(42)
#ALTERNATE
(10..100).cover?(42)

# Queston 6
# show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."
famous_words = "Four score and " + famous_words
famous_words.prepend('"Four score and "')

# Question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!

# Question 8
# Create an array containing only two elements: Barney's name and Barney's number.
# 
flintstones = { 
  "Fred" => 0, "Wilma" => 1, 
  "Barney" => 2, "Betty" => 3, 
  "BamBam" => 4, "Pebbles" => 5 
  }

# array = ['Barney', 2]
p flintstones.assoc('Barney')
