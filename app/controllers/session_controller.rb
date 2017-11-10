class SessionController < ApplicationController
  def new
  end

  def create
    # First find user with username, and if nil, find with email.
    user = User.find_by :username => params[:username]
    if user.blank?
      user = User.find_by :email => params[:username]
    end

    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      render :json => user
    else
      render :json => { :errors => ["Username and password do not match."] } 
    end
  end
end
