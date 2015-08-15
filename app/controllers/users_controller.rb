class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def new
    render :new
  end

  def create
  end

  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

  def edit
    render :new
  end

  def update
  end

  def destroy
  end
end
