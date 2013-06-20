class SessionsController < ApplicationController
  def index
    render "new"
  end

  def create
    user = User.find_by_name params[:name]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now.alert = "Invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
