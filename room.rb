class Room

  attr_accessor :number, :guests

  def initialize(number, guests)
    @number = number
    @guests = guests
  end

  def add_guests(input_guests)
    @guests = []
    for guest in input_guests
      @guests.push(guest)
    end
  end

  def checkout_guests(leaving_guests)
    @guests.delete_if{|guest| leaving_guests.include?(guest)}
  end

end