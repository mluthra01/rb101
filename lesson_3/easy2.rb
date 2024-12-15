# Question 1
ages = { 
  "Herman" => 32, "Lily" => 30, 
  "Grandpa" => 402, "Eddie" => 10 
}
ages.key?('Spot')
ages.has_key?('Spot')
# Alternative
# Hash#include? and Hash#member?, 

# Question 2
munsters_description = "The Munsters are creepy in a good way."


# munsters_description[0].downcase + munsters_description[1..2].upcase + munsters_description[3..4].downcase + munsters_description[5..-1].upcase #1
munsters_description.swapcase!

# munsters_description[0].upcase + munsters_description[1..-1].downcase #2

munsters_description.capitalize!

munsters_description.downcase! #3

munsters_description.upcase! #4


# Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
# ages['Marilyn'] = 22
# ages['Spot'] = 237

# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?('dino')
advice.match('dino')

# Question 5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(FreD, Barney, Wilma, Betty, BamBam, Pebbles)

# Question 6
flintstones << 'Dino'
flintstones.push('Dino')

# Question 7

flintstones.concat(['Dino', 'Hoppy'])
flintstones.push('Dino').push('Hoppy')
flintstones.push('Dino', 'Hopppy')
flintstones.concat(%w(Dino Hoppy))

# Question 8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))

# Question 9

statement = "The Flintstones Rock!"
statement.count('t')

# Question 10

title = "Flintstone Family Members"
puts title.center(40)
