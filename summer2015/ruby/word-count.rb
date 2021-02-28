# class Wordcount

#   def count(string)
#     # puts "Write something. Not number."
#     # input = gets.chomp
#     greater_than_three = ""

#     string.split.each do |word|
#       if word.size > 3
#         greater_than_three << (word + " ")
#       end
#     end 
#     puts greater_than_three
#     puts greater_than_three.split.size
#   end

# end

#  word = Wordcount.new
#  word.count('hi i am sabina shrestha.')
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# class Palindromes
#   def check(string)
#     # puts "write a word."
#     # input = gets.chomp
#     reverse = string.reverse
#     puts string + "=>" + reverse

#     if reverse == string
#       puts "your word is a Palindromes"
#     else
#       puts "your word is not a Palindromes"
#     end

#   end
# end

# word = Palindromes.new
# word.check('hello')

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# class Vowel
#   def find_vowels
#     puts "Write a word."
#     input = gets.chomp
#     # /[aeiou]/ is called regular expresion go to Rubular expressions 
#     vowel_count = input.scan(/[aeiou]/).count 
#     puts vowel_count
#   end
# end

# check = Vowel.new
# check.find_vowels

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# class Sentence
#   def reverse(sentance)
#     # puts "write a sentence"
#     # input = gets.chomp
#     reverse = sentance.reverse
#     arrange = reverse.split.reverse
#     print arrange

#   end  
# end

# sentence = Sentence.new
# sentence.reverse('hi there how you doing?')

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# class Find
