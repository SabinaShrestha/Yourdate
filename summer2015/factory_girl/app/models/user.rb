class User < ActiveRecord::Base
  has_many :shirts
  validates_presence_of :first_name, :last_name
  validates_uniqueness_of :email
end
