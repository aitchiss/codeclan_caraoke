require ('minitest/autorun')
require_relative ('../guest.rb')


class TestGuest < MiniTest::Test

  def setup

    @guest_1 = Guest.new("Suzanne")

  end

  def test_guest_has_name
    assert_equal("Suzanne", @guest_1.get_name)
  end

end