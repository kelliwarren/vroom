
class SessionController < ApplicationController
#log the user in here
  def new
   
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.try(:authenticate, params[:password])
      session[:current_user] = @user
      redirect_to root_path, notice: 'Logged in!'
    else
      flash[:alert] = "Wrong info, dude!"
      render :new
    end
  end

   #logs the user out

  def logout
    reset_session
    redirect_to root_path, notice: 'goodbye'
  end



end