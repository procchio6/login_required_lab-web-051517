class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]
    if current_user.nil? || current_user.empty?
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end
end
