require 'test_helper'

class Api::V1::EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get inex" do
    get api_v1_employees_inex_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_employees_show_url
    assert_response :success
  end

end
