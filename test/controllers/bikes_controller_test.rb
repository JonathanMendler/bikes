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

  test "create" do
    assert_difference "Bike.count", 1 do
      post "/bikes.json", params: { manufacturer: "Trek", model: "Domane SLR 9", style: "Gravel", price: 13199.99, image: "https://cdn.roadbikedatabase.com/wp-content/uploads/2022/04/04234749/2021-Trek-Domane-SLR-9.jpg" }
      assert_response 200
    end
  end

  test "show" do
    get "/bikes/#{Bike.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "manufacturer", "model", "style", "price", "image", "created_at", "updated_at"], data.keys
  end

  test "update" do
    photo = Photo.first
    patch "photos/#{photo.id}.json", params: { manufacturer: "Test Name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Test Name", data["manufacturer"]
  end
end
