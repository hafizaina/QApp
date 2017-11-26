class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(user_id: params[:session][:user_id].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the index page.
      log_in user
      flash[:success] = "Welcome #{user.first_name}."
      redirect_to root_path
    else
      # Invalid login. Display an error message.
      flash.now[:danger] = 'Invalid user id or password.'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
