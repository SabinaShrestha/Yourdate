require 'rails_helper'

RSpec.describe Chocolate, type: :model do
  
  before(:each) do
    @chocolate = Chocolate.create!(chocolate_name: "dairymilk", variety: "milk", quantity: 10, user_id: 1)
    @userId = @chocolate.user_id
    @user = User.create!(first_name: 'Flippy')
  end

  it "#chocolate" do
    expect(@chocolate.chocolate).to eq("#{@chocolate.chocolate_name} #{@chocolate.variety} #{@chocolate.quantity} #{@chocolate.user_id}")
  end

  it "#chocolate_user" do
    expect(@chocolate.user.first_name).to eq("Flippy")
  end

end
