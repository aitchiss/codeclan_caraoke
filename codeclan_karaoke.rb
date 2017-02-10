require_relative ('./viewer.rb')
require_relative ('./karaokebar.rb')
require_relative ('./room.rb')

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
    @viewer.task_selector

  end

end

karaokebar = CodeClanCaraoke.new
karaokebar.run