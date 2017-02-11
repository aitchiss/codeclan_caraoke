require ('minitest/autorun')
require_relative ('../guest.rb')
require_relative ('../bar_tab.rb')
require_relative ('../drink.rb')
require_relative ('../room.rb')


class TestGuest < MiniTest::Test

  def setup

    @guest_1 = Guest.new("Suzanne", 50)
    @bar_tab = BarTab.new(Room.new(12))

  end

  def test_guest_has_name
    assert_equal("Suzanne", @guest_1.get_name)
  end

  def test_guest_has_funds
    assert_equal(50, @guest_1.current_funds)
  end

  def test_deduct_cash
    @guest_1.deduct_cash(10)
    assert_equal(40, @guest_1.current_funds)
  end

  def test_guest_can_pay_bar_tab_deducts_cash
    drink1 = Drink.new("gin", 5)
    @bar_tab.add_drink(drink1)
    @guest_1.pay_bar_tab(@bar_tab)
    assert_equal(45, @guest_1.current_funds)

  end

end