require ('minitest/autorun')
require_relative('../bar_tab.rb')
require_relative('../drink.rb')

class TestBarTab < MiniTest::Test

  def setup

    @bar_tab = BarTab.new

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