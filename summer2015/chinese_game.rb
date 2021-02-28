
puts "Wanna play chinese play?"
puts "What you choose odd or even?"
you = gets.chomp
puts "choose your fingers number 0 to 5."
yourfingers = gets.chomp.to_i
puts "you choose #{yourfingers}"
puts "you choose #{you}"

me = [0..5]

myfingers = me[rand(0...6)]
puts "here is #{myfingers}"

a = yourfingers + myfingers
puts "i am #{a}"

if a % 2 == 0
  puts "i am even"
  if you == "even"
    puts "You win"
  else
    puts "I win"
  end
else 
  puts "i am odd"
  if you == "odd"
    puts "you win"
  else
    puts "i win"
  end
end



