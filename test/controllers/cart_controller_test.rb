require 'test_helper'

class CartControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get add_to" do
    get :add_to
    assert_response :success
  end

end
