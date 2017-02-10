

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

end