# CALCULATOR

def prompt(message)
    Kernel.puts(" => #{message}")
end

def valid_number?(number)
    number.to_i != 0
end

def operator_message(operator)
  case operator
    when '1'
      'Adding'
    when '2'
      'Substracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
  end
end


prompt("Welcome to calculator, Please enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name")
  else
    prompt("Hi #{name.capitalize()}, Nice to meet you")
    break
  end
end

loop do #main loop


    number1 = ''
    loop do
        prompt("Whats the first number?")
        number1 = Kernel.gets().chomp.to_f

        if valid_number?(number1)
            break
        else
            prompt("Hmm.. that doesn't look like a valid number")
        end
    end

    number2 = ''
    loop do
        prompt("Whats the second number?")
        number2 = Kernel.gets().chomp.to_f

        if valid_number?(number2)
            break
        else
            prompt("Hmm.. that doesn't look like a valid number")
        end
    end

    operator_prompt = <<-MSG
      "What operation would you like to perform?
        1) add 
        2) subtract 
        3) multiply 
        4) division"
    MSG

  prompt(operator_prompt)

  operation = ''
    loop do
    operation = Kernel.gets().chomp()
    
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Must choose 1,2,3 or 4")
    end
    end

    # if operation == '+'
    #     answer = number1 + number2
    # elsif operation == '-'
    #     answer = number1 - number2
    # elsif operation == '/'
    #     answer = number1 / number2
    # elsif operation == '*'
    #     answer = number1 * number2
    # else
    #     Kernel.puts("Please chose a valid operation")
    # end
    prompt(operator_message("#{operation}")) 
    sleep(1)

    result = case operation
        when '1'
        number1 + number2
        when '2'
        number1 - number2
        when '3'
        number1 * number2
        when '4'
        number1 / number2
    end

    prompt("the answer is #{result}") if result
    prompt("Do you want to perform another calculation> (Y to calculate again)")

    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
end
    prompt("Thanking for using calculator. Goodbye!")

