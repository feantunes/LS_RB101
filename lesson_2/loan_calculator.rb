# loan_calculator.rb

def monthly_interest_rate(annual_rate)
  annual_rate / 12 / 100
end

def loan_duration_months(years)
  years * 12
end

def monthly_payment(amount, month_rate, months)
  amount = amount.truncate(2) * (month_rate / (1 - (1 + month_rate)**(-months)))
  amount.truncate(2)
end

def total(payment, months)
  total = months * payment.truncate(2)
  total.truncate(2)
end

def valid_loan?(loan)
  loan > 0
end

def valid_rate?(rate)
  rate > 0
end

def valid_years?(year)
  year > 0
end

loan_amount = ''
annual_interest_rate = ''
loan_duration_years = ''

loop do
  puts "=>> Welcome to the Mortgage/Car Loan Calculator!"
  loop do
    puts "=>> How much are you looking into borrowing today?"
    loan_amount = gets.chomp.to_f.truncate(2)

    if valid_loan?(loan_amount)
      break
    else
      puts "This is not a valid amount, try again!"
    end
  end

  loop do
    puts "=>> What's your Annual Percentage Rate (APR)?"
    annual_interest_rate = gets.chomp.to_f.truncate(2)

    if valid_rate?(annual_interest_rate)
      break
    else
      puts "This is not a valid rate, try again!"
    end
  end

  loop do
    puts "=>> How many years you need to pay everything back?"
    loan_duration_years = gets.chomp.to_f.truncate(2)

    if valid_years?(loan_duration_years)
      break
    else
      puts "This is not a valid year, try again!"
    end
  end

payment  = monthly_payment(loan_amount, monthly_interest_rate(annual_interest_rate), loan_duration_months(loan_duration_years))
totals   =  total(payment, loan_duration_months(loan_duration_years))
interest = (totals - loan_amount).truncate(2) 

puts "Your monthly payment is $#{payment}."
puts "In total, you're going to pay $#{totals}."
puts "Interest, alone, will account for $#{interest}."

puts "Do you want to calculate again?(Y/N)"
again = gets.chomp
  unless again.start_with?('y')
    break
  end
end
