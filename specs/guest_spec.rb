require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../hotel.rb')
require_relative('../chain.rb')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("David", 100)
  end

  def test_guest_has_name
    assert_equal("David", @guest.name)
  end

  def test_guest_has_money
    assert_equal(100, @guest.money)
  end

end