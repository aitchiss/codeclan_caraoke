require ('minitest/autorun')
require_relative('../bar_tab.rb')

class TestBarTab < MiniTest::Test

  def setup

    @bar_tab = BarTab.new

  end

  def test_bar_tab_starts_with_zero_drinks
    assert_equal(0, @bar_tab.total)
  end


end