require_relative('./drink.rb')

class BarTab

  def initialize

    @tab_contents = []

  end

  def total

    total_charges = 0

    for drink in @tab_contents
      total_charges += drink.price
    end

    return total_charges

  end

  def add_drink(drink)

    @tab_contents << drink

  end

end