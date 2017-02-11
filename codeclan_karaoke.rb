require_relative ('./viewer.rb')
require_relative ('./karaokebar.rb')
require_relative ('./room.rb')
require_relative ('./guest.rb')

class CodeClanCaraoke

  def initialize

    @viewer = Viewer.new

    room1 = Room.new(5)
    room2 = Room.new(8)
    room3 = Room.new(10)
    room4 = Room.new(20)

    @rooms = [room1, room2, room3, room4]

    @codeclancaraoke = KaraokeBar.new("CodeClanCaraoke", @rooms, 300)

  end

  def run
    @viewer.welcome
    while @user_input != "5"
      @user_input = @viewer.task_selector
      case @user_input
        when "1"
          @guest_name = @viewer.get_guest_name
          @guest_funds = @viewer.get_guest_funds
          guest = Guest.new(@guest_name, @guest_funds)
          @codeclancaraoke.admit_guest(guest)
          @viewer.list_guests_in_karaoke_bar(@codeclancaraoke)
        when "2"
          guest_to_check_in = @viewer.select_guest_from_karaoke_bar(@codeclancaraoke)
          room = @viewer.select_room_from_karaoke_bar(@codeclancaraoke)
          room.check_in_guest(guest_to_check_in)
        when "3"
          guest_to_check_out = @viewer.select_guest_from_karaoke_bar(@codeclancaraoke)
          room = @viewer.select_room_from_karaoke_bar(@codeclancaraoke)
          room.check_out_guest(guest_to_check_out)
      end
    end


  end

end

karaokebar = CodeClanCaraoke.new
karaokebar.run