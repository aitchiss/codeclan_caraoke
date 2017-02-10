class Room

  def initialize(capacity)

    @capacity = capacity
    @guests = []
    @playlist = []

  end

  def get_capacity
    return @capacity
  end

  def number_of_guests
    return @guests.count
  end

  def number_of_songs_on_playlist
    return @playlist.count
  end

end