class UsersController < ApplicationController

  # POST request to /users.json
  def create
    p "*****************"
    p "Starting create in Users Controller"
    p "*****************"

    p params

    user = User.create user_params

    if user.save
      respond_to do |format|
        format.html {}
        format.json { render json: { :user => user } }
      end
    else

    end
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :dob, :username, :email, :ad_key, :strikes, :password, :password_confirmation)
  end
end
