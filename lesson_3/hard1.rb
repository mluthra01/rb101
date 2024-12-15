# Question 1

# nothing , greeting is truthy ig used puts wont print, basically nil
# greeting is nil here, and no "undefined method or local variable" exception is thrown.
# Typically, when you reference an uninitialized variable, Ruby will raise an exception, 
# stating that it’s undefined. However, when you initialize a
# local variable within an if clause, even if that if clause doesn’t get executed, 
# the local variable is initialized to nilend

# Question 2

# greetings = { a: 'hi there' }

# Question 3

# A) one is 'two'
# two is 'three'
# three is 'two'

# B) 'two', 'three', 'one'
# 
#c) 'two', ;three, 'one'

# Question 4


# 1.12.33.12

def is_an_ip_number(number)
  number >= 0 && number <= 255
end

def dot_separated_ip_address(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  dot_separated_words.each do |word|
    if is_an_ip_number(word.to_i) 
      return true
    end
  end
end

puts dot_separated_ip_address("1.12.33.2")
puts dot_separated_ip_address('4.7.8.1.2')
puts dot_separated_ip_address('4.7.8')
puts dot_separated_ip_address('4.7.8.5')