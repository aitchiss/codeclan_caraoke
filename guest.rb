class Guest

  def initialize(name, cash)
    @name = name
    @cash = cash
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