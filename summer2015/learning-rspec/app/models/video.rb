class Video < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :title
  validates_inclusion_of :rating, in:%w(G PG PG-13 R NC-17 XXX),message: 'give rating'
  serialize :actors
  
  def actors_string
    "The actors in this movie are:#{self.actors.join(',')}"
  end 
end
