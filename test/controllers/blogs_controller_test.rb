require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  test "should get ecettips" do
    get :ecettips
    assert_response :success
  end

end
