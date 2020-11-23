require 'test_helper'

class CreateUsersControllerTest < ActionDispatch::IntegrationTest
  test 'get user form and create user' do
    get signup_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'Ahmad2' } }
      follow_redirect!
    end
    assert_template 'root_path'
    assert_match 'Ahmad2', response.body
  end
  # test "the truth" do
  #   assert true
  # end
end
