class UsersController < ApplicationController

  # POST request to /users.json
  def create
    user = User.create user_params

    if user.save
      render :json => user
    else
      render :json => user.errors.full_messages
    end
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :dob, :username, :email, :ad_key, :strikes, :password, :password_confirmation)
  end
end
