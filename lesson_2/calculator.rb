# CALCULATOR

Kernel.puts("Please type two numbers") 
number1 = Kernel.gets().chomp.to_f
number2 = Kernel.gets().chomp.to_f

Kernel.puts("what operation you like to perform: '-','+','/','*'")
operation = Kernel.gets().chomp.to_s

if operation == '+'
    answer = number1 + number2
elsif operation == '-'
    answer = number1 - number2
elsif operation == '/'
    answer = number1 / number2
elsif operation == '*'
    answer = number1 * number2
else
    Kernel.puts("Please chose a valid operation")
end

if answer
Kernel.puts("the result is #{answer}")
end

# a cleaner way of writing the code
# result = if operator == '1'
#         number1.to_i() + number2.to_i()
#       elsif operator == '2'
#         number1.to_i() - number2.to_i()
#       elsif operator == '3'
#         number1.to_i() * number2.to_i()
#       elsif operator == '4'
#         number1.to_f() / number2.to_f()
#       end