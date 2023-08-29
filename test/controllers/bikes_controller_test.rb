require "test_helper"

class BikesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/bikes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Bike.count, data.length
  end
end
