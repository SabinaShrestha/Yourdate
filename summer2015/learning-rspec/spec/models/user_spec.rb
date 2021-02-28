require 'rails_helper'

RSpec.describe User, type: :model do

  context "instance method" do
    before(:each) do
      @user = User.create!(first_name:'jake', last_name:'Sorce')
    end

    describe "#full_name" do
      it "returns the users full name" do
        expect(@user.full_name).to eq("#{@user.first_name} #{@user.last_name}")
      end
    end

    describe "#increment_times_attended" do
      it "increments the times attended" do
        @user.increment_times_attended
        expect(@user.times_attended).to eq(1)
      end

      it "increments times attended with params" do
        increment_times = 3
        @user.increment_times_attended(increment_times)
        expect(@user.times_attended).to eq(increment_times)
      end
    end

    describe "#decrement_times_attended" do
      it "decrement_times_attended" do
        @user.decrement_times_attended
        expect(@user.times_attended).to eq(-1)
      end
    end

  end

  context "class methods" do
    before(:each) do
      @user_1 = User.create(first_name: "George", last_name: "Washington")
      @user_2 = User.create(first_name: "Alf", last_name: "Zebra")
      @user_3 = User.create(first_name: "Hector", last_name: "Sorce")
    end

    describe ".by_first_name" do
      it "orders users by first_name" do
        expect(User.all.by_first_name.first).to eq(@user_2)
      end
    end

    describe ".by_last_name" do
      it "orders users by last_name" do
        expect(User.all.by_last_name.first).to eq(@user_3)
      end
    end
  end

end
