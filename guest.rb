class Guest

  attr_reader :fave_song

  def initialize(name, cash, fave_song)
    @name = name
    @cash = cash
    @fave_song = fave_song
  end

  def get_name
    return @name
  end

  def current_funds
    return @cash
  end

  def deduct_cash(amount)
    @cash -= amount
  end

  def pay_bar_tab(bartab)
    @cash -= bartab.total
    bartab.clear_tab
  end

  def woo
    return "Woo!"
  end



end