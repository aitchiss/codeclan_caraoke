class CodeClanCaraoke

  def initialize(viewer)

    @viewer = viewer

    room1 = Room.new(5)
    room2 = Room.new(8)
    room3 = Room.new(10)
    room4 = Room.new(20)

    rooms = [room1, room2, room3, room4]

    @codeclancaraoke = KaraokeBar.new("CodeClanCaraoke", rooms, 300)

  end

  def run
    @viewer.welcome
    

  end

end