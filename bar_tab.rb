

class BarTab

  attr_reader :room

  def initialize(room)

    @tab_contents = []
    @room = room

  end

  def total

    total_charges = 0

    @tab_contents.each { |drink| total_charges += drink.price}

    return total_charges

  end

  def add_drink(drink)

    @tab_contents << drink

  end

  def clear_tab
    @tab_contents = []

  end

end