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
end

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
