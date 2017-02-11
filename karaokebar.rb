class KaraokeBar

  attr_reader :songs


  def initialize(name, rooms, cash, songs)

    @name = name
    @rooms = rooms
    @cash_held = cash
    @entrance_fee = 10
    @guests = []
    @songs = songs

  end

  def get_name
    return @name
  end

  def number_of_rooms
    return @rooms.count
  end

  def current_funds
    return @cash_held
  end

  def admit_guest(guest)
    if guest.current_funds >= @entrance_fee
      @cash_held += @entrance_fee
      guest.deduct_cash(@entrance_fee)
      @guests << guest
    end
  end

  def number_of_guests
    return @guests.count
  end

  def get_guests
    return @guests
  end

  def get_rooms
    return @rooms
  end


end