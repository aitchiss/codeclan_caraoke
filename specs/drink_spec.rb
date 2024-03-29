require ('minitest/autorun')
require_relative('../drink.rb')

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new("gin", 5)
  end

  def test_drink_has_type

    assert_equal("gin", @drink1.type)
  end

  def test_drink_has_price

    assert_equal(5, @drink1.price)
  end

end