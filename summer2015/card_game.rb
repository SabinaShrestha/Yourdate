
array_cards = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
array_suits = ["spades", "hearts", "diamonds", "clubs" ]

array_cards.each do |card|
  array_suits.each do |suit|
    puts "#{card} of #{suit}."
  end
end

puts "We are playing card game."
p "Choose a card: "
yourcard = gets.chomp

p "Choose your suit: "
yoursuit = gets.chomp
p "You choose #{yourcard} of #{yoursuit}"


ccard = array_cards[rand(0..13)]
csuit = array_suits[rand(0..3)]
p "computer choose #{ccard} of #{csuit}"

