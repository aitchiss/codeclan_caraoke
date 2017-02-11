require_relative('./bar_tab.rb')

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
    if space_in_room?
      @guests << guest 
    else
      return "Room full. Cannot add guest"
    end
  end

  def check_out_guest(guest)
    @guests.each do |single_guest|
      @guests.delete(guest) if single_guest == guest
    end
  end

  def space_in_room?
    return true if @guests.count < @capacity
    return false
  end

  def get_guests
    return @guests
  end

end