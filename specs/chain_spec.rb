require('minitest/autorun')
require('minitest/rg')
require_relative('../chain.rb')
require_relative('../room.rb')
require_relative('../hotel.rb')
require_relative('../guest.rb')

class TestChain < Minitest::Test

  def setup
    @hotel1 = Hotel.new("Hitlon", [Room.new(1,2), Room.new(2,2), Room.new(3,2), Room.new(4,2)])
    @hotel2 = Hotel.new("Ibis", [] )
    @hotel3 = Hotel.new("Holiday", [])
   
    @hotels = [@hotel1, @hotel2, @hotel3]
    @chain = Chain.new("Premier", @hotels)
  end

  def test_chain_has_name
    assert_equal("Premier", @chain.name)
  end

  def test_chain_has_hotels
    assert_equal(3, @chain.hotels.count)
  end
end