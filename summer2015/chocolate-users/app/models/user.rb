class User < ActiveRecord::Base

  has_many :chocolates

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # def chocolate
  #   "#{self.user_id.chocolate_name}"
  # end

end
