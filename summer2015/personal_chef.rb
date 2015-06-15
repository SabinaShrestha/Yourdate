class  PersonalChef
	# def make_toast(color)
	# 	puts "Making your toast #{color}."
 #    return self
	# end

  def make_eggs(quantity)
     # puts "making your #{quantity} eggs!"
     quantity.times do 
       puts "Making an egg."
     end
     puts "I'm done!"
     return self
  end

  def make_milkshake(engredient)
    puts "making your milkshake  with #{engredient}."
    return self
  end

  def good_morning 
    today = Date.today.strftime("%A")
    day_of_year = Date.today.yday
    puts "Happy #{today}, It's the #{day_of_year} day of 2011."
    return self
  end

  def gameplan(meals)
    meals.each do |meal|
      puts "We'll have #{meal}..."
    end
    all_meals = meals.join(", ")
    puts "In summery: #{all_meals}"
  end

  def inventory
    produce = {apple: 3, oranges: 1, carrots: 12}
    produce.each do |item, quantity|
      puts "There are #{quantity} #{item} in the fridge."
    end
  end

  def water_status(minutes)
    if minutes < 7
      puts "The water is not boiling yet."
    elsif minutes == 7
      puts "It's just barely boiling"
    elsif minutes == 8
      puts "It's boiling"
    else
      puts "Hot! Hot! Hot!"
    end
    return self
  end

  def countdown(counter)
    until counter > 0
      puts "The counter is #{counter}"
      counter = counter - 1
    end
    return self
  end

  def make_toast(color)
    if color.nil?
      puts "How am I supposed to make nothingness toast?"
    else
      puts "making your toast #{color}!"
    end
    return self
  end

end

# sabina = PersonalChef.new
# sabina.make_toast('red').make_eggs(7).make_milkshake('chocolate')