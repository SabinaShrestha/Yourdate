require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user){User.create!(first_name:'Sabina', last_name:'Shrestha', gender:'Female', age: 22)}


   describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "creates a successfull message post" do
      user_params = {first_name:'Sabina', last_name:'Shrestha', gender:'Female', age: 22}
      @user = User.new(user_params)
      @user.should be_an_instance_of User
      # expect(@user).to redirect_to'/index_path'
      redirect_to(users_path)

    end
  end

  # describe "GET #new" do
  #   @user = User.new
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #edit" do
  #   @user = User.new(params[:id])
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

 

end
