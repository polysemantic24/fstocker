require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get myportfolio" do
    get users_myportfolio_url
    assert_response :success
  end

end
