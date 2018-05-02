class Ticket
  FARES = 150
  attr_reader :fare, :stamp_enter

  def initialize(fare)
    @fare = fare
  end

  def stamp(place_name)
    @stamp_enter = place_name
  end
end
