require_relative ('./karaokebar.rb')

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

  def choose_room
    puts "Which room would you like to check a guest into?"
    @user_input = gets.chomp.to_i
    return @user_input
  end

  def select_guest_from_karaoke_bar(guest_string, karaokebar)
    guest_selected = nil
    for guest in karaokebar.get_guests
      if guest.get_name == guest_string
        guest_selected = guest
      end
    end
    return guest_selected
  end

  def select_room_from_karaoke_bar(karaokebar)
    puts "Which room would you like to check a guest into?"
    user_choice = gets.chomp.to_i
    room = karaokebar.get_rooms[(user_choice -1)]
    return room
  end

end