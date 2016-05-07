require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../hotel.rb')
require_relative('../guest.rb')
require_relative('../chain.rb')

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new(1, ["David", "Katie"])
    @room2 = Room.new(2, [])
    @room3 = Room.new(3, ['Bert', 'Ernie'])
  end

  def test_room_has_number
    assert_equal(1, @room1.number)
  end 

  def test_room_has_guests
    assert_equal(["David", "Katie"], @room1.guests)
  end  

  def test_add_guests
    @room2.add_guests(['Ted', 'Dougal'])
    assert_equal(['Ted', 'Dougal'], @room2.guests)
  end

  def test_checkout_guests
    @room3.checkout_guests(['Bert'])
    assert_equal(['Ernie'], @room3.guests)
    @room3.checkout_guests(['Bert', 'Ernie'])
    assert_equal([], @room3.guests)
  end

end