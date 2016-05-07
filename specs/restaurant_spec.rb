require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../hotel.rb')
require_relative('../chain.rb')
require_relative('../restaurant.rb')

class TestRestaurant < Minitest::Test

  def setup
    @restaurant = Restaurant.new("Itsu", "Bacon", 10)
  end

  def test_restaurant_has_name
    assert_equal("Itsu", @restaurant.name)
  end

  def test_restaurant_has_food
    assert_equal("Bacon", @restaurant.food)
  end

  def test_restaurant_has_price
    assert_equal(10, @restaurant.price)
  end

end