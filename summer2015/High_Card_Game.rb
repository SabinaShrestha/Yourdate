# High Card

# You and the computer both draw a card from the deck. High card wins!

# Steps
#  - Build a deck of cards
#    - suits
#    - card values
#  - Player draws a card
#  - Computer draws a card
#  - Evaluate the winner

# Bonus
#  - Play the full deck 
#  - Keep score
#  - Same card value? High suit wins! 

CARD_VALUES = %w[2 3 4 5 6 7 8 9 J Q K A]
SUIT_VALUES = %w[clubs diamons hearts spades]

# Generates a card to play with
def draw_card(compare_card=nil) # Optional parameter compare_card
  result = nil
  loop do 
    result = {                  # Generates the card with a random value and suit
      suit: SUIT_VALUES.sample,
      value: CARD_VALUES.sample
    }
    break if result != compare_card  # When the card generated is not the same as the compared one, we are done
  end
  result
end

# Generates Score based on the index of the value and the suit
def card_score(card_param)
  # Will generate a number like: 5.2 for Seven of Hearts, 0.3 for the Two of Spades
  "#{CARD_VALUES.index(card_param[:value])}.#{SUIT_VALUES.index(card_param[:suit])}".to_f
end

player = draw_card()  # Generate a Card
computer = draw_card(player) # Generate a Card and pass the previous one to compare and not have a repeat

player_score = card_score(player)  # Generate the Score for the player's card
computer_score = card_score(computer)   # Generate the Score for the computer's card

# Print our cards that are playing
puts "#{player}: #{player_score}"
puts "#{computer}: #{computer_score}"

# Determine the winner based on the score
if player_score > computer_score
  puts "Player Wins!"
elsif player_score < computer_score
  puts "Computer Wins"
end