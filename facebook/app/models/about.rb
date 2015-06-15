class About < ActiveRecord::Base
  belongs_to :user
  has_many :workplaces
  has_many :educations
end
