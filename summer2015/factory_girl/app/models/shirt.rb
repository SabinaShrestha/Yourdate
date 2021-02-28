class Shirt < ActiveRecord::Base
  belongs_to :user
  validates_inclusion_of :size,in:%w(small medium large x-large)
end
