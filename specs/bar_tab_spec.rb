require ('minitest/autorun')
require_relative('../bar_tab.rb')
require_relative('../drink.rb')
require_relative('../room.rb')

class TestBarTab < MiniTest::Test

  def setup

    @room_1 = Room.new(12)
    @bar_tab = BarTab.new(@room_1)

  end

  def test_bar_tab_has_room

    assert_equal(@room_1, @bar_tab.room)
  end

  def test_bar_tab_starts_with_zero_drinks
    assert_equal(0, @bar_tab.total)
  end

  def test_add_drink_to_bar_tab_increments_total
    drink1 = Drink.new("gin", 5)
    @bar_tab.add_drink(drink1)
    assert_equal(5, @bar_tab.total)
  end


end