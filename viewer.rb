require_relative ('./karaokebar.rb')
require_relative ('./guest.rb')
require_relative ('./room.rb')

class Viewer

  def welcome
    puts "Welcome!\n**********************************\n"
  end

  def task_selector
    puts "What would you like to do? Select from the number options below:"
    puts "1. Admit new guest"
    puts "2. Check guest into room"
    puts "3. Check guest out of room"
    puts "4. Add song to room playlist"
    puts "5. Quit the application"
    @user_input = gets.chomp
    return @user_input
  end

  def get_guest_name
    puts "Please enter guest name:"
    @guest_name = gets.chomp
    return @guest_name
  end

  def get_guest_funds
    puts "Please enter guest funds:"
    @guest_funds = gets.chomp.to_i
    return @guest_funds
  end


  def select_guest_from_karaoke_bar(karaokebar)
    puts "Please enter guest name:"
    guest_name = gets.chomp
    guest_selected = nil
    for guest in karaokebar.get_guests
      if guest.get_name == guest_name
        guest_selected = guest
      end
    end
    return guest_selected
  end

  def select_room_from_karaoke_bar(karaokebar)
    puts "Which room would you like to select?"
    user_choice = gets.chomp.to_i
    room = karaokebar.get_rooms[(user_choice -1)]
    return room
  end

  def list_guests_in_karaoke_bar(karaokebar)
    puts "Guests currently in #{karaokebar.get_name}:\n"
    karaokebar.get_guests.each {|guest| puts guest.get_name}
    puts "--------------------------------------------"
  end

  def list_guests_in_room(room)
    puts "Guests currently checked into room:\n"
    room.get_guests.each {|guest| puts guest.get_name}
    puts " -------------------------------------------"
  end
  ##########needs amended to output error if guest not able to be checked in##############

  def confirm_check_out(guest, room)
    puts "#{guest.get_name} has been successfully checked out"
    puts "--------------------------------------------"
  end
  ##########needs amended to output error if guest not able to be checked out##############

  def select_song(karaokebar)
    puts "Please choose from the avaiable songs (select using number):"
    karaokebar.list_available_songs
    song_choice = (gets.chomp.to_i - 1)
    return song_choice

  end

  def confirm_song_added(song)

    puts "The song '#{song.title}' has been added to the room's playlist"
    puts "-----------------------------------------------"

  end



end