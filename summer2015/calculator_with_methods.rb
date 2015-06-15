
class MyCalculator
  def initialize
    puts 'Welcome to use my calculator'
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    sleep 1
    puts 'what is your first number?'
    @first_number = gets.chomp.to_f
    puts '.............................'
    sleep 1
    puts 'What is your operator???'
    puts 'choose any one + - / * %'
    @operator = gets.chomp
    puts '.............................'
    sleep 1
    puts 'What is your other number???'
    @second_number = gets.chomp.to_f
    puts '.............................'
    sleep 1
  end

  def calculation
    if @operator == "+"
      @result = @first_number + @second_number
    elsif @operator == "-"
      @result = @first_number - @second_number
    elsif @operator == "*"
      @result = @first_number * @second_number
    elsif @operator == "/"
      @result = @first_number / @second_number
    elsif @operator == "%"
      @result = @first_number % @second_number
    end
    p "Your total is : #@result" 
    sleep 1
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts 'Would you like to continue??, Startover?? or Exit?? Type 1, 2 or 3'
    answer = gets.chomp.to_i

    if answer == 1
      @first_number = @result
      puts 'What is your operator???'
      puts 'choose any one + - / * %'
      @operator = gets.chomp
      puts '.............................'
      sleep 1
      puts 'What is your other number???'
      @second_number = gets.chomp.to_f
      puts '.............................'
      sleep 1
      calculation
    elsif answer == 2
      startover = MyCalculator.new
      startover.calculation
    elsif answer == 3
      puts 'Good Bye see you next time.'
    end
  end

end

calculator = MyCalculator.new
calculator.calculation


