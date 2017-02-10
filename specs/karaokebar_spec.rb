require ('minitest/autorun')
require_relative ('../karaokebar.rb')
require_relative ('../room.rb')

class TestKaraokeBar < MiniTest::Test

  def setup

    room_1 = Room.new(12)
    room_2 = Room.new(18)
    room_3 = Room.new(5)
    room_4 = Room.new(10)

    rooms = [room_1, room_2, room_3, room_4]


    @codeclancaraoke = KaraokeBar.new("CodeClan Caraoke", rooms)

  end

  def test_karaoke_bar_has_name
    assert_equal("CodeClan Caraoke", @codeclancaraoke.get_name)
  end

  def test_karaoke_bar_initializes_with_rooms
    assert_equal(4, @codeclancaraoke.number_of_rooms)
  end

end