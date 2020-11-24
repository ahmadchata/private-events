class UsersController < ApplicationController
  include UsersHelper
  before_action :require_login, except: %i[new create]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_param)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = 'Successful'
      redirect_to user_path(current_user)
    else
      flash[:alert] = 'Failed'
      render 'new'
    end
  end
end
