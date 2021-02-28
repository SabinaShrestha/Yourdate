require 'rails_helper'

RSpec.describe Video, type: :model do
  #lazy load video
  let(:video){Video.create!(title:'New Title', rating:'G')}

  #Creates a video each time before each test
  # before(:each) do

  # end

   describe "#actors_string" do
    it 'lists the actors' do
      video.actors = ["Jake Black", "Jake Sorce"]
      expect(video.actors_string).to eq("The actors in this movie are:#{self.actors.join(',')}")
    end

    it "doesn't list actors if there are none" do
      expect(video.actors_string).to eq("The actors in this movie are:")
    end
  end



  describe "validations" do
    it 'saves if it has a valid title' do
      expect(Video.new(title: 'New Title', rating: 'G')).to be_valid
    end

    it "does not save without a title" do
      expect(Video.new(rating: 'G')).to_not be_valid
    end

    it "has a valid rating" do
      expect(Video.new(title: 'Rating R')).to be_valid
    end

    it "is not valid without a raiting" do
      expect(Video.new(title: 'Rating R')).to_not be_valid
    end
  end


end
