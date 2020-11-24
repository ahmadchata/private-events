module UsersHelper
  def user_param
    params.require(:user).permit(:name)
  end
end
