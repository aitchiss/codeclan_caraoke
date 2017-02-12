require ('minitest/autorun')
require_relative ('../karaokebar.rb')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestKaraokeBar < MiniTest::Test

  def setup

    room_1 = Room.new(12)
    room_2 = Room.new(18)
    room_3 = Room.new(5)
    room_4 = Room.new(10)

    rooms = [room_1, room_2, room_3, room_4]

    song_1 = Song.new("Bruce Springsteen", "Badlands")
    song_2 = Song.new("The Smiths", "This Charming Man")
    songs = [song_1, song_2]


    @codeclancaraoke = KaraokeBar.new("CodeClan Caraoke", rooms, 200, songs)

    @guest_1 = Guest.new("Suzanne", 40, song_1)
    @guest_2 = Guest.new("Richard", 5, song_2)

  end

  def test_karaoke_bar_has_name
    assert_equal("CodeClan Caraoke", @codeclancaraoke.get_name)
  end

  def test_karaoke_bar_initializes_with_rooms
    assert_equal(4, @codeclancaraoke.number_of_rooms)
  end

  def test_karaoke_bar_initializes_with_songs
    assert_equal(2, @codeclancaraoke.songs.count)
  end

  def test_karaoke_bar_current_funds
    assert_equal(200, @codeclancaraoke.current_funds)
  end

  def test_guest_pays_entry_fee
    @codeclancaraoke.admit_guest(@guest_1)
    assert_equal(210, @codeclancaraoke.current_funds)
    assert_equal(30, @guest_1.current_funds)
    assert_equal(1, @codeclancaraoke.number_of_guests)

  end

  def test_karaoke_bar_starts_with_no_guests
    assert_equal(0, @codeclancaraoke.number_of_guests)
  end

  def test_guest_with_insufficient_cash_not_admitted
    @codeclancaraoke.admit_guest(@guest_2)
    assert_equal(0, @codeclancaraoke.number_of_guests)
    assert_equal(200, @codeclancaraoke.current_funds)
  end

end