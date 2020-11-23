require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get new_event_path
    assert_response :success
  end

  test 'should get show' do
    get @event
    assert_response :success
  end
  # test "the truth" do
  #   assert true
  # end
end
