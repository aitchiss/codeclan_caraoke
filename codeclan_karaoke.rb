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
    @user_input = @viewer.task_selector
    case @user_input
      when "1"
        @guest_name = @viewer.get_guest_name
        @guest_funds = @viewer.get_guest_funds
        guest = Guest.new(@guest_name, @guest_funds)
        @codeclancaraoke.admit_guest(guest)
      when "2"
        room = @viewer.choose_room
    end


  end

end

karaokebar = CodeClanCaraoke.new
karaokebar.run