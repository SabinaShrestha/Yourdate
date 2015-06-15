def gameplan(meals)
  meals.each do |meal|
    puts "We'll have #{meal}..."
  end

  all_meals = meals.join(", ")
  puts "In summery: #{all_meals}"
end