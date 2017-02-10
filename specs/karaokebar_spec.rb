require ('minitest/autorun')
require_relative ('../karaokebar.rb')

class TestKaraokeBar < MiniTest::Test

  def setup

    @codeclancaraoke = KaraokeBar.new("CodeClan Caraoke")

  end

  def test_karaoke_bar_has_name
    assert_equal("CodeClan Caraoke", @codeclancaraoke.get_name)
  end

  

end