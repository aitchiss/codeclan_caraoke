require ('minitest/autorun')
require_relative ('../song.rb')

class TestSong < MiniTest::Test

  def setup

    @born_to_run = Song.new("Bruce Springsteen", "Born to Run")

  end


  def test_song_has_title
    assert_equal("Born to Run", @born_to_run.title)
  end

  def test_song_has_artist
    assert_equal("Bruce Springsteen", @born_to_run.artist)
  end


end