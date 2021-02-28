require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it "has a valid factory" do
      user = FactoryGirl.create(:user_with_shirts)
      binding.pry
      expect(user).to be_valid
    end
  end
end
