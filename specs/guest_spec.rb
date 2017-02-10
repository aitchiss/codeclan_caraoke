require ('minitest/autorun')
require_relative ('../guest.rb')


class TestGuest < MiniTest::Test

  def setup

    @guest_1 = Guest.new("Suzanne", 50)

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

end