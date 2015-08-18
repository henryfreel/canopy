require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  before do
    user_params = Hash.new
    user_params[:first_name] = FFaker::Name.first_name
    user_params[:last_name] = FFaker::Name.last_name
    user_params[:email] = FFaker::Internet.email
    user_params[:password] = FFaker::Lorem.words(2).join
    user_params[:password_confirmation] = user_params[:password]
    @current_user = User.create(user_params)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@current_user)
  end

  describe "#new" do
    before do
      get :new
    end

    it "should respond with 200 success" do
      expect(response.status).to be(200)
    end

    it "should assign @project" do
      expect(assigns(:project)).to be_instance_of(Project)
    end 

    it "should render the :new view" do
      expect(response).to render_template(:new)
    end
  end

  describe "#create" do
    before do
      post :create, project: {title: "Hello", live_url: "www.test.com", github_url: "www.test.com", description: "lakfaiernefjsndfe adkjand"}
    end

    it "should respond with 302 found" do
      expect(response.status).to be(302)
    end

    it "should redirect to project_path" do
      expect(response.location).to match(/\/projects\/\d+/)
    end

  end

end







