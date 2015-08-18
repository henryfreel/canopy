require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    user_params = Hash.new
    user_params[:first_name] = FFaker::Name.first_name
    user_params[:last_name] = FFaker::Name.last_name
    user_params[:username] = FFaker::Name.last_name
    user_params[:email] = FFaker::Internet.email
    user_params[:password] = FFaker::Lorem.words(2).join
    @user = User.create(user_params)
  end

  describe "#full_name" do
    it "joins first name and last name" do
      expect(@user.full_name).to eq("#{@user.first_name} #{@user.last_name}")
    end
  end




end

 

