require ('minitest/autorun')
require_relative ('../room.rb')
require_relative ('../guest.rb')
require_relative ('../song.rb')

class TestRoom < MiniTest::Test

  def setup

    @room_1 = Room.new(12)
    @room_2 = Room.new(2)

    @song_1 = Song.new("Bruce Springsteen", "Born to Run")
    @song_2 = Song.new("Blur", "Song 2")
    @song_3 = Song.new("Van Halen", "Panama")

    @guest_1 = Guest.new("Suzanne", 50, @song_1)
    @guest_2 = Guest.new("Rob", 60, @song_2)
    @guest_3 = Guest.new("Kim", 45, @song_3)

    

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

  def test_guest_woos_on_check_in
    @room_1.add_to_playlist(@song_1)
    assert_equal("Woo!", @room_1.check_in_guest(@guest_1))
  end

  def test_check_in_multiple_guests
    @room_1.check_in_guest(@guest_1)
    @room_1.check_in_guest(@guest_2)
    assert_equal(2, @room_1.number_of_guests)
  end

  def test_check_out_guest
    @room_1.check_in_guest(@guest_1)
    @room_1.check_out_guest(@guest_1)
    assert_equal(0, @room_1.number_of_guests)
  end

  def test_check_out_one_guest_only
    @room_1.check_in_guest(@guest_1)
    @room_1.check_in_guest(@guest_2)
    @room_1.check_out_guest(@guest_1)
    assert_equal(1, @room_1.number_of_guests)
  end

  def test_add_to_playlist
    @room_1.add_to_playlist(@song_1)
    assert_equal(1, @room_1.number_of_songs_on_playlist)
  end

  def test_guest_woos_if_fave_song_added
    @room_1.check_in_guest(@guest_1)
    assert_equal("Woo!", @room_1.add_to_playlist(@song_1))
  end


  def test_space_in_room_is_true
    @room_2.check_in_guest(@guest_1)
    assert_equal(true, @room_2.space_in_room?)
  end

  def test_space_in_room_is_false
    @room_2.check_in_guest(@guest_1)
    @room_2.check_in_guest(@guest_2)
    assert_equal(false, @room_2.space_in_room?)
  end

  def test_check_in_fails_if_room_full
    @room_2.check_in_guest(@guest_1)
    @room_2.check_in_guest(@guest_2)
    @room_2.check_in_guest(@guest_3)
    assert_equal(false, @room_2.space_in_room?)
    assert_equal(2, @room_2.number_of_guests)
    assert_equal("Room full. Cannot add guest", @room_2.check_in_guest(@guest3))
  end


end