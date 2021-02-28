class User < ActiveRecord::Base
  has_many :videos
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def increment_times_attended(increment_times = 1)
    self.times_attended += increment_times
  end

  def decrement_times_attended
    self.times_attended -= 1
  end

  def self.by_first_name
    order(:first_name)
  end

  def self.by_last_name
    order(:last_name)
  end 

  # User.all.by_first_name
  User.all.by_last_name

end
