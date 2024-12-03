def print_message(message)
  puts "=> #{message}"
end

def valid_name?(name)
  !name.empty?
end

def valid_loan_amount?(amount)
  Float(amount) > 0 rescue false
end

def valid_apr?(apr)
  apr = Float(apr) rescue false
  apr && apr >= 0 && apr <= 100
end

def valid_duration?(loan_duration)
  Float(loan_duration) > 0 rescue false
end

def remove_comma(loan_amount)
  loan_amount.delete(',')
end

def keep_going(output)
  output == 'Y'
end

def format_currency(amount)
  "$#{'%.2f' % amount}".gsub(/(\d)(?=(\d{3})+\.)/, '\\1,')
end

def format_percentage(percentage)
  "#{percentage.round(2)}%"
end

print_message("Welcome to the Car Loan Calculator. Please enter you name.")
print_message("-------------------------------")

loop do
  name = ''
  loop do
    name = gets.chomp
    if valid_name?(name)
      break
    else
      print_message("Make sure to enter a valid name")
    end
  end

  print_message("Hi #{name.capitalize}, enter your loan amount (e.g./ 30,000):")
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    loan_amount = remove_comma(loan_amount)
    if valid_loan_amount?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      print_message("Enter a valid loan amount greater than 0.")
    end
  end

  print_message("Please enter the annual perncentage rate.
    (APR, e.g., 5 for 5%)")
  apr = ''
  loop do
    apr = gets.chomp
    if valid_apr?(apr)
      apr = apr.to_f
      break
    else
      print_message("Enter a valid APR greater than 0.")
    end
  end
  monthly_interest = (apr / 100) / 12.0

  print_message("Enter the loan duration in years:")
  loan_duration = ''
  loop do
    loan_duration = gets.chomp
    if valid_duration?(loan_duration)
      loan_duration = loan_duration.to_f
      break
    else
      print_message("Please enter a valid loan duration in years")
    end
  end
  duration_in_months = loan_duration * 12

  denominator = 1 - ((1 + monthly_interest)**(-duration_in_months))
  monthly_payment = loan_amount * (monthly_interest / denominator)
  monthly_payment = monthly_payment.round(2)
  monthly_interest_percentage = (monthly_interest * 100).round(2)
  total_paid = (monthly_payment * duration_in_months).round(2)
  total_interest = (total_paid - loan_amount).round(2)

  print_message("Calculating...")
  sleep(0.5)
  print_message("Thanks #{name.capitalize}")
  print_message(
    "Your monthly payment will be #{format_currency(monthly_payment)}
    at #{format_percentage(monthly_interest_percentage)}% interest per month"
  )
  print_message(
    "you will pay a total of #{format_currency(total_paid)}
    with #{format_currency(total_interest)} in total interest
    over the course of #{duration_in_months.to_i} months"
  )
  print_message(
    "Would you like to calculate another loan. (Y for yes)"
  )

  response = gets.chomp.upcase

  if !keep_going(response)
    print_message("Thank you for using Madhur's Loan Calculator. Goodbye!")
    break
  end
end
