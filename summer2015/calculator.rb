

class Calculator
  puts "Welcome to Ruby Calculator!"
  sleep 1
  puts "What is the first number in your equation?"
  @first_num = gets.chomp.to_f
  
  puts "Now choose an operator. Please enter +, -, *, /, or %."
  @operation = gets.chomp

  puts "Now choose your second number."
  @second_num = gets.chomp.to_f

def first_calculation
  if @operation == "+" 
    result = @first_num + @second_num
  elsif @operation == "-"
    result = @first_num - @second_num
  elsif @operation == "*"
    result = @first_num * @second_num
  elsif @operation == "/"
    result = @first_num / @second_num
  elsif @operation == "%"
    result = @first_num % @second_num
  end
  puts "The Total is #{result}"

  sleep 1
  puts "Do you want to factor a third number? Y or N."
  @answer = gets.chomp.upcase

  # def second_calculation
  if @answer == "Y"
    puts "What is the third number?"
    third_num = gets.chomp.to_f
    puts "What is your operation?"
    @operation1 = gets.chomp
    if @operation1 == "+" 
        total = result + third_num
      elsif @operation1 == "-"
        total = result - third_num
      elsif @operation1 == "*"
        total = result * third_num
      elsif @operation1 == "/"
        total = result / third_num
      elsif @operation1 == "%"
        total = result % third_num
    end
    puts "The Total is #{total}"
  else
  puts "Bye See Ya..."
  end
# end
end
  
  
  


# first_calculation
# second_calculation
end

calculator = Calculator.new
calculator.first_calculation

