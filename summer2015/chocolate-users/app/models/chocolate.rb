class Chocolate < ActiveRecord::Base

  belongs_to :user

  def chocolate
    "#{self.chocolate_name} #{self.variety} #{self.quantity} #{self.user_id}"
  end

  def chocolate_user
    "#{self.user_id}"
  end

end
