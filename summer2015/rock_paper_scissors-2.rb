def shoot (userWins, compWins, user)
 
  hand = ["rock", "paper", "scissors"]

  userHand = user

  compHand = hand[rand(0...3)]

  if (userHand == "rock" && compHand == "paper")
    puts "Computer chose paper, paper beats rock, you lose"
    compWins += 1
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  elsif(userHand == "rock" && compHand == "scissors")
    puts "Computer chose scissors, rock beats scissors, you win!"
    userWins += 1
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  elsif(userHand == "rock" && compHand == "rock")
    puts "Computer chose rock, its a tie!"
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  elsif (userHand == "paper" && compHand == "rock")
    puts "Computer chose rock, paper beats rock, you win!"
    userWins += 1
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  elsif(userHand == "paper" && compHand == "scissors")
    puts "Computer chose scissors, scissors beats paper, you lose!"
    compWins += 1
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  elsif(userHand == "paper" && compHand == "paper")
    puts "Computer chose paper, its a tie!"
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  elsif (userHand == "scissors" && compHand == "paper")
    puts "Computer chose paper, scissors beats paper, you win!"
    userWins += 1
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  elsif(userHand == "scissors" && compHand == "rock")
    puts "Computer chose rock, rock beats scissors, you lose!"
    compWins += 1
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  else
    puts "Computer chose scissors, its a tie!"
    puts "The score is: \t You: #{userWins} \t Computer: #{compWins}"
  end

  
  answer = nil

  while( answer != "yes" && answer != "no")
    puts "Would you like to play again? Type 'yes' or 'no'"
    answer = gets.chomp
  end


  if(answer == "yes")
  
  newHand = nil
  while ( newHand != "rock" && newHand != "paper" && newHand != "scissors" ) 
    puts "Please type either 'rock', 'paper' or 'scissors'"
    newHand = gets.chomp
  end
  shoot(userWins, compWins, newHand)
  else
    puts "Thanks for playing!"
    exit
  end
end


puts "Lets play rock paper scissors!"
userHand = nil

while ( userHand != "rock" && userHand != "paper" && userHand != "scissors" )
  puts "Please type either 'rock', 'paper' or 'scissors'"
  userHand = gets.chomp
end


userWins = 0
compWins = 0

shoot(userWins, compWins, userHand)

