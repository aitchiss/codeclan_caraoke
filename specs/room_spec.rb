require ('minitest/autorun')
require_relative ('../room.rb')
require_relative ('../guest.rb')

class TestRoom < MiniTest::Test

  def setup

    @room_1 = Room.new(12)

    @guest_1 = Guest.new("Suzanne")

  end


  def test_room_has_fixed_capacity
    assert_equal(12, @room_1.get_capacity)
  end

  def test_room_starts_with_zero_guests
    assert_equal(0, @room_1.number_of_guests)
  end

  def test_room_playlist_starts_empty
    assert_equal(0, @room_1.number_of_songs_on_playlist)
  end

  def test_check_in_guest
    @room_1.check_in_guest(@guest_1)
    assert_equal(1, @room_1.number_of_guests)
  end

end