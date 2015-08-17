class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def new
    if current_user
      redirect_to profile_path
    else
      @user = User.new
      render :new
    end
  end

  def create
    if current_user
      redirect_to profile_path
    else
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to profile_path
      else
        flash[:error] = @user.errors.full_messages.join(", ")
        redirect_to signup_path
      end
    end
  end

  def show
    if params[:id].present?
      @user = User.find(params[:id])
    else
      @user = User.find(session[:user_id])
    end
    render :show
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to profile_path(@user)
    else
      flash[:notice] = @user.error
      redirect_to :back
    end
  end

  def destroy
    
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :profile_picture, :location, :avatar, :bio, :github, :linkedin, :job_title, :stack)
    end
end
