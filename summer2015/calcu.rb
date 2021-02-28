def calculator
   puts "\tGreetings humanoid, im the Calculator."

   while true
      prompt = '>> '
      print prompt
      str = gets.chomp.split(" ")
      return if str[0] == 'q' 
      operand1 = str[0].to_i
      operand2 = str[2].to_i
      operand3 = str[4].to_i
      operator = str[1].to_sym
      operator2 = str[3].to_sym

      case 
      when operator == "+" && operator2 == "+"
         puts operand1 + operand2 + operand3
      when operator == "+" && operator2 == "-"
         puts operand1 + operand2 - operand3
      when operator == "-" && operator2 == "+"
         puts operand1 - operand2 + operand3 
      else
         puts "Invalid input"
      end
   end

end
if __FILE__ == $0
 calculator
end
puts "Okay :( , bye!"