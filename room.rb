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

  def add_to_playlist(song)
    @playlist << song
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def check_out_guest(guest)
    @guests.each do |single_guest|
      @guests.delete(guest) if single_guest == guest
    end

  end

end