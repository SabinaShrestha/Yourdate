# require 'pry_bug'
class Vacation
  
  def initialize
  @locations = %w[Hawaii Aruba jamaica Sedona Alaska Delaware]
  @@planet = 'Earth'
  end

  def get_planet
    @@planet
  end

  def change_planet
    @@planet 
  end

  def choose_location
    @locations.sample
  end

  def choose_date
  end

  def choose_appropriate_outfit
  end

  def looping_yay
    binding.pry
    @locations.length.times do |i|
      p @locations[i]
    end
  end

end


x = 0
being
x = x + 1
p x if x > 0
end until x == 5