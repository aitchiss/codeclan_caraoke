require_relative ('./viewer.rb')
require_relative ('./karaokebar.rb')
require_relative ('./room.rb')
require_relative ('./guest.rb')
require_relative ('./song.rb')

class CodeClanCaraoke

  def initialize

    @viewer = Viewer.new

    room1 = Room.new(5)
    room2 = Room.new(8)
    room3 = Room.new(10)
    room4 = Room.new(20)

    @rooms = [room1, room2, room3, room4]

    song_1 = Song.new("Bruce Springsteen", "Badlands")
    song_2 = Song.new("The Smiths", "This Charming Man")
    songs = [song_1, song_2]

    @codeclancaraoke = KaraokeBar.new("CodeClanCaraoke", @rooms, 300, songs)

  end

  def run
    @viewer.welcome
    while @user_input != "5"
      @user_input = @viewer.task_selector
      case @user_input
        when "1"
          guest_name = @viewer.get_guest_name
          guest_funds = @viewer.get_guest_funds
          song_artist = @viewer.get_guest_fave_song_artist
          song_title = @viewer.get_guest_fave_song_title
          guest = Guest.new(guest_name, guest_funds, Song.new(song_artist, song_title))
          @codeclancaraoke.admit_guest(guest)
          @viewer.list_guests_in_karaoke_bar(@codeclancaraoke)
        when "2"
          guest_to_check_in = @viewer.select_guest_from_karaoke_bar(@codeclancaraoke)
          room = @viewer.select_room_from_karaoke_bar(@codeclancaraoke)
          room.check_in_guest(guest_to_check_in)
          @viewer.list_guests_in_room(room)
        when "3"
          guest_to_check_out = @viewer.select_guest_from_karaoke_bar(@codeclancaraoke)
          room = @viewer.select_room_from_karaoke_bar(@codeclancaraoke)
          room.check_out_guest(guest_to_check_out)
          @viewer.confirm_check_out(guest_to_check_out)
        when "4"
          song = @viewer.select_song(@codeclancaraoke)
          room = @viewer.select_room_from_karaoke_bar(@codeclancaraoke)
          room.add_to_playlist(song)
          @viewer.confirm_song_added(@codeclancaraoke.songs[song])

      end
    end


  end

end

karaokebar = CodeClanCaraoke.new
karaokebar.run