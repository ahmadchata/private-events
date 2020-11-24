require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get '/sessions/new'
    assert_response :success
  end
  # test "the truth" do
  #   assert true
  # end
end
