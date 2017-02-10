class KaraokeBar

  def initialize(name, rooms, cash)

    @name = name
    @rooms = rooms
    @cash_held = cash
    @entrance_fee = 10
    @guests = []

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


end