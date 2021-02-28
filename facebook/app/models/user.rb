class User < ActiveRecord::Base
  has_many :posts
  has_many :friends
  has_one :about
end
