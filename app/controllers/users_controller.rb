class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_param)
    if @user.save
      flash[:notice] = 'Successful'
      redirect_to root_path
    else
      flash[:alert] = 'Failed'
      render 'new'
    end
  end

  private
  def user_param
    params.require(:user).permit(:name)
  end
end
