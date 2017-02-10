require ('minitest/autorun')
require_relative ('../room.rb')

class TestRoom < MiniTest::Test

  def setup

    @room_1 = Room.new(12)

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

end