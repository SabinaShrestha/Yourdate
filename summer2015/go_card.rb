class Deck

 def initialize #method

   array_one = %w[ s c h d ]
   array_two = %w[ 2 3 4 5 6 7 8 9 10 11 12 13 ]

   @cards = [] # variable array for the card with suit
   array_one.each do | letter |
     array_two.each do | number |
       @cards.push letter + '' + number
     end
   end
 end

 def draw
   @cards.pop #pop eleminates the card drawn from the array and makes array size smaller.
 end

 def shuffle! # shuffles the remaining card in array after pop
   @cards.shuffle!
 end

 def deck_size # arrays length after pop
   @cards.length
 end

end

deck = Deck.new # object of class deck which have new values after pop

deck.shuffle!

puts deck 

while deck.deck_size >= 2

# finshed with my rough draft...now on to the final!

puts "Let's play War!"
 sleep 1

 player_card = deck.draw
 puts "Player Card: #{player_card}"
 computer_card = deck.draw
 puts "Computer Card: #{computer_card}"
 player_card = player_card.sub(/[schd]/,'').to_i
 computer_card = computer_card.sub(/[schd]/,'').to_i

 if player_card < computer_card
   puts "Computer Wins!  Better luck next time!"
 elsif player_card > computer_card
   puts "Player Wins!  Yippee!"
 elsif player_card == computer_card
   puts "Draw!  So close!"
 end

sleep 1

end