class Game
  def play
    puts "what's your lucky number? between one to hundred"
    puts "write number as string."
    user_number = gets.chomp.to_s

    if user_number.length == 11
      puts "#{user_number} is 11"
      puts "11 is 6"
      puts "6 is 3"
      puts "3 is 5"
      puts "5 is 4"
      puts "4 is a magic number"
    elsif user_number.length == 10
      puts "#{user_number} is 10"
      puts "10 is 3"
      puts "3 is 5"
      puts "5 is 4"
      puts "4 is a magic number"
    elsif user_number.length == 9
      puts "#{user_number} is 9"
      puts "9 is 4"
      puts "4 is a magic number"
    elsif user_number.length == 8
      puts "#{user_number} is 8"
      puts "8 is 5"
      puts "5 is 4"
      puts "4 is a magic number"
    elsif user_number.length == 7
      puts "#{user_number} is 7"
      puts "7 is 5"
      puts "5 is 4"
      puts "4 is a magic number"        
    elsif user_number.length == 6
      puts "#{user_number} is 6"
      puts "6 is 3"
      puts "3 is 4"
      puts "4 is a magic number"
    elsif user_number.length == 5
      puts "#{user_number} is 5"
      puts "5 is 4"
      puts "4 is a magic number"
    elsif user_number.length == 4
      puts "#{user_number} is 4"
      puts "4 is a magic number"
    elsif user_number.length == 3
      puts "#{user_number} is 3"
      puts "3 is 5"
      puts "5 is 4"
      puts "4 is magic number"
    else
      puts "please write your number in string"
      play
    end

    puts "Do you wanna play again? Y or N"
    user_answer = gets.chomp.downcase

    if user_answer == "y"
      play
    elsif user_answer == "n"
      puts "Bye See Ya."
      exit
    end

  end
end

go = Game.new
go.play


      
            
  