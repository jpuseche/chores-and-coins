require "test_helper"

class IncomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get income_index_url
    assert_response :success
  end
end
