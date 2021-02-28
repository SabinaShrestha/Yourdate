require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create!(first_name: "sabina", last_name: "shrestha", id: 1)
    # @userId = User.id
  end
  
  it "#full_name" do
    expect(@user.full_name).to eq("#{@user.first_name} #{@user.last_name}")
  end

  describe User do
    it "should have many chocolates" do
      t = user.reflect_on_association(:chocolates)
      t.macro.should == :has_many
    end
  end

  # describe Chocolate do
  #   it{chould belong_to(:user)}
  # end


  # it "#chocolate" do 
  #   expect(@user.@userId.chocolate_name).to eq("#{@user.@userId.chocolalte_name}")
  # end

end
