class UsersController < ApplicationController
  
  # Instantiates a new user object.
  def new
    @user = User.new()
  end

  # Creates user object based on passed parameters. 
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :root
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end


