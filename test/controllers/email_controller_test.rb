require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  test "should get password_digest" do
    get :password_digest
    assert_response :success
  end

end
