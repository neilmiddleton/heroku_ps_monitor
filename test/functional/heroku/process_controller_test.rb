require 'test_helper'

class Heroku::ProcessControllerTest < ActionController::TestCase
  test "should get count" do
    get :count
    assert_response :success
  end

end
