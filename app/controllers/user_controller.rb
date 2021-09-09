class UserController < ApplicationController
  
  def new
    @user = User.new()
  end

  def index
    @users = User.all()
  end

  def create
    @user = User.new()
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


