require('minitest/autorun')
require('minitest/rg')
require_relative('../hotel.rb')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../chain.rb')

class TestHotel < Minitest::Test

  def setup
    @room1 = Room.new(1, 2)
    @room2 = Room.new(2, 2)
    @room3 = Room.new(3, 2)
    @room4 = Room.new(4, 2)
    @rooms = [@room1, @room2, @room3, @room4]
    @hotel = Hotel.new("Hilton", @rooms)
  end

  def test_hotel_has_name
    assert_equal("Hilton", @hotel.name)
  end

  def test_hotel_has_rooms
    assert_equal(4, @hotel.rooms.count)
  end

end