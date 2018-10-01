require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get admin" do
    @password = "password"
    @confirmed_user = User.create(email: "admin@example.com", password: @password)
    sign_in(@confirmed_user.email, @password)
    get dashboard_admin_url
    assert_response :success
  end

end
