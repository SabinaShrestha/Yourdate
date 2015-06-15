
#5.times {
print "Type a number(100):"
number = gets().chomp
	if !(number.to_i.to_s == number)
		while !(number.to_i.to_s == number) do 
			print"Please enter number:"
			number = gets.chomp
		end
	end

	if number % 2 == 0
		puts "your number is Even."
	else
		puts "Your number is Odd."
	end

	if number % 3 == 0
		puts "And it's divisible by three."
	else
		puts "Oops it's not divisible by three."
	end
#}
	
	
	
	