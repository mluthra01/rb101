LANGUAGE = 'es'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts(" => #{message}")
end

def valid_number?(number)
  Float(number) rescue false
  # attempts to convert the input into float
  # rescue false return false if exception occurs
end

# def integer?(input)
#   input.to_i.to_s == input
# end
# THIS METHOD CONVERTS THE INPUT TO AN INTEGER IF THE INPUT CAN BE CONVERTED 
# IT FINE BUT IF NOT IT WILL EITHER RETURN PART OF THE INPUT(ANY PART THATS INTEGER)
# OR IT WILL RETURN 0 IF FOR EXAMPLE "ABC:"


# def operator_message(operator)
#   case operator
#   when '1'
#     'Adding'
#   when '2'
#     'Substracting'
#   when '3'
#     'Multiplying'
#   when '4'
#     'Dividing'
#   end
# end

# Here if we need to add more code we have to make sure save the whole case 
# statement to a variable and return that in the end

def operator_message(operator)
  {
    '1' => 'Adding',
    '2' => 'Subtracting',
    '3' => 'Multiplying',
    '4' => 'Dividing'
  }[operator]
end
prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(messages('valid_name',LANGUAGE))
  else
    prompt("Hi #{name.capitalize()}, Nice to meet you")
    break
  end
end

loop do
  number1 = ''
  loop do
    prompt(messages("first_number",LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      number1 = number1.to_f
        break
    else
      prompt(messages("invalid_number",LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number',LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      number2 = number2.to_f
        break
    else
        prompt(messages("invalid_number",LANGUAGE))
    end
  end

  prompt(messages('operator_prompt',LANGUAGE))
  operation = ''
  loop do
    operation = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt(messages("invalid_operation",LANGUAGE))
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
  prompt(operator_message(operation))
  sleep(0.5)

  result =
    case operation
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
  prompt(messages('keep_going',LANGUAGE))

  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt(messages('goodbye',LANGUAGE))
