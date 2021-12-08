# Calculate the monthly loan payment based on a given formula.
# Ask the user for the loan amount, the total duration of the loan in
#   years/months, and the annual percentage rate for the loan.
# START
# GET the loan_amount
# GET the amount of years of the loan
# GET the additional months on the loan if any
# GET the APR for the loan
# SET loan_duration_months = SUBPROCESS "multiply years given by 12 and add to
#   months given"
# SET the monthly_interest_rate = SUBPROCESS "divide the apr by 12 and convert
#   to decimal value"
# CALC the monthly payment = SUBPROCESS "plug everything into formula"
# PRINT the monthly payment
# END

# If the user puts in something other than a number, num.to_i() will evaluate to
#  zero which will result in false which also fits our needs
require 'pry'

def valid_loan_amount?(num)
  num.to_i() > 0
end

def positive_integer?(input)
  input.to_i().to_s() == input && input.to_i() >= 0
end

def positive_float?(input)
  input.to_f().to_s() == input && input.to_f() >= 0
end

def valid_apr?(num)
  (positive_integer?(num) || positive_float?(num)) && num.to_f > 0
end

def calculate_loan_duration(years, months)
  (12 * years) + months
end

def calculate_monthly_rate(annual_rate)
  (annual_rate / 12.0) / 100.0
end

def calculate_monthly_payment(loan_amount, monthly_interest_rate,
                              loan_duration_months)
  loan_amount *
    (monthly_interest_rate /
      (1 -
        (1 + monthly_interest_rate)**(-1 * loan_duration_months)))
end

loan_amount = ''
loop do
  puts "=> What is the total dollar amount of the loan?"
  loan_amount = Kernel.gets.chomp()
  if valid_loan_amount?(loan_amount)
    break
  else
    puts "=> Please make sure the amount listed is a positive number."
  end
end

years_of_loan = ''
loop do
  puts "=> How many years is the loan for?"
  puts "(if loan is a combination of years and months or less than one year," \
       " input the months in the next step)"
  years_of_loan = Kernel.gets.chomp()
  if positive_integer?(years_of_loan)
    break
  else
    puts "=> Please make sure the number is 0 or greater with no decimal " \
         "places."
  end
end

additional_months = ''
loop do
  puts "=> How many months (or additional months) is the loan for?"
  additional_months = Kernel.gets.chomp()
  if positive_integer?(additional_months)
    break
  else
    puts "=> Please make sure the number is 0 or greater with no decimal " \
         "places."
  end
end

apr = ''
loop do
  puts "=> What is the Annual Percentage Rate for the loan?"
  apr = Kernel.gets.chomp()
  if valid_apr?(apr)
    break
  else
    puts "=> APR must be a positive integer or float."
  end
end

loan_duration_months = calculate_loan_duration(years_of_loan.to_i,
                                               additional_months.to_i)

monthly_interest_rate = calculate_monthly_rate(apr.to_f)

monthly_payment = calculate_monthly_payment(loan_amount.to_i,
                                            monthly_interest_rate,
                                            loan_duration_months)

puts "Your monthly payment is: $#{format('%.2f', monthly_payment)}"
