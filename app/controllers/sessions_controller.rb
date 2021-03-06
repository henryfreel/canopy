class SessionsController < ApplicationController

  def new
    # disable nav bar
    @disable_nav = true

    # set background color
    @login_page = true

    if current_user 
      redirect_to "/canopy-#{current_user[:username]}"
    else
    render :new
    end
  end

  def create
    user = User.find_by_email(user_params[:email])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to "/canopy-#{user[:username]}"
    else
      # flash[:error] = sessions.errors.full_messages.join(", ")
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end


