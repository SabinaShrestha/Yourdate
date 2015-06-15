
yourscore = 0
myscore = 0
i = "yes"

until (i != "yes")
  me = ["rock", "paper", "scissor"]
5.times {
  puts "We are playing Rock Paper Scissor!!!"
  puts "What you choose?"
  yourhand = gets.chomp


  myhand = me[rand(0...3)]
  puts "my: #{myhand}" 
  if (yourhand == "paper" and myhand == "rock")
    puts "you win"
    yourscore += 1
  elsif (yourhand == "rock" and myhand == "scissor")
    puts "You win"
    yourscore += 1
  elsif (yourhand == "scissor" and myhand == "paper")
    puts "you win"
    yourscore += 1
  elsif ( yourhand == "rock" and myhand == "paper")
    puts "I win"
    myscore += 1
  elsif (yourhand == "scissor" and myhand == "rock")
    puts "I win"
    myscore += 1
  elsif (myhand == "scissor" and yourhand == "paper")
    puts "I win"
    myscore += 1
  else
    puts "we are equal."
  end
}
puts "Your score: #{yourscore}"
puts "My score: #{myscore}"
puts "would you like to play again?"
puts "type yes or no"
you = gets.chomp
i = you

  puts 'Bye' if i == "no"

end










    
