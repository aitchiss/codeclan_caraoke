class KaraokeBar

  def initialize(name, rooms)

    @name = name
    @rooms = rooms

  end

  def get_name
    return @name
  end

  def number_of_rooms
    return @rooms.count
  end


end