# FIZZ BUZZ….. This is a very common challenge, so don’t get too lazy and just steal ideas from the 
# interwebs. Think through it yourselves!  Fizz Buzz will be a method that will take an argument that is a 
# number greater than 0. The method will print out each number one at a time, except, if the number is divisible 
# by three, it will print the word “Fizz” instead of the number. If the number is divisible by 5, 
# it will print the word “Buzz” instead of the number. If the number is divisible by both 3 and 5, it will 
# print out “FizzBuzz” instead of the number.
# konrad [5:32 PM]
# For Example….
# konrad [5:33 PM]
# fizz_buzz(16)   # when you run this function, you should see...
# konrad [5:33 PM]
# 1
# konrad [5:33 PM]
# 2
# konrad [5:33 PM]
# Fizz
# konrad [5:33 PM]
# 4
# konrad [5:33 PM]
# Buzz
# konrad [5:33 PM]
# Fizz
# konrad [5:33 PM]
# 7
# konrad [5:33 PM]
# 8
# konrad [5:33 PM]
# Fizz
# konrad [5:33 PM]
# Buzz
# konrad [5:33 PM]
# 11
# konrad [5:33 PM]
# Fizz
# konrad [5:33 PM]5:33
# 13
# konrad [5:34 PM]
# 14
# konrad [5:34 PM]
# FizzBuzz
# konrad [5:34 PM]
# 16
class FizzBuzz
  def initialize
    puts 'Welcome to the World of Fizz and Buzz'
    puts '#####################################'
    sleep 1
    puts 'Whats your number for Fizz and Buzz?? must be > 0'
    @number = gets.chomp.to_i
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    sleep 1
  end

  def fizzbuzz
    array = []
    array << (1..@number)
    p array
    array.each do |x|
      # if x % 3 == 0
      #   puts 'Fizz'
      # elsif x % 5 == 0
      #   puts 'Buzz'
      # elsif x % 3 == 0 && x % 5 ==0
      #   puts 'FizzBuzz'
      # else
      #   puts x
      # end
      p x
    end
  end
end

n = FizzBuzz.new
n.fizzbuzz