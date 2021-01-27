class PupperNoodles
 
  attr_reader :user

  def run
    welcome
    login_or_signup
    change_user_name
    see_all_dogs
    choose_a_dog
    make_a_playdate
    user_cancel
  end

  def welcome
    puts "Welcome to PupperNoodles! The App you never you knew you needed!"
    sleep(1)
    puts "Time to get your playdate started...."
  end

  # private

  def login_or_signup
    puts "Please enter your username to login or sign up"
    answer = STDIN.gets.chomp.downcase
    @user = User.find_or_create_by(username: answer)
    sleep(1)
    puts "Alright, #{@user.username.capitalize}!"
  end

  def change_user_name
    puts "Your username is expired" 
    puts "Please enter a new username?"
    new_user_name = STDIN.gets.chomp 
    @user.update(username: new_user_name)
  end
end

  def see_all_dogs
    puts "Let's take a look at all available dogs...".colorize(:green)
    sleep(2)
    puts "
    .-------------.       .    .   *       *   
    /_/_/_/_/_/_/_/ \         *       .   )    .
   //_/_/_/_/_/_// _ \ __          .        .   
  /_/_/_/_/_/_/_/|/ \.' .`-o                    
   |             ||-'(/ ,--'                    
   |             ||  _ |                        
   |             ||'' ||                        
   |_____________|| |_|L                     
         ".colorize(:blue)
    puts "..................................".colorize(:red)
    sleep(2)
    puts "..........MATCHING................".colorize(:yellow)
    sleep(2)
    puts "..................................".colorize(:green)
    sleep(3)
    Dog.all.each do |dog_ins|
      puts dog_ins.id_and_name()
    end
  end

  def choose_a_dog
    puts "Choose the number of the dog you'd like to play with!"
    answer = STDIN.gets.chomp
    @dog = Dog.all.find(answer)
    sleep(1)
  end

  def make_a_playdate
    puts "You have selected #{@dog.name}, would you like to make a playdate? yes/no?".colorize(:green)
    answer = STDIN.gets.chomp
      if answer == "yes"
         playdate = Playdate.create(dog_id: @dog.id, user_id: @user.id, time: Time.now)
        puts "Great! Your playdate is scheduled!"
        sleep(1)
        puts "Your playdate with #{@dog.name} is scheduled for January 30th, 2021 at 11:30am! Have fun!".colorize(:green)
        sleep(2.5)
      else
        puts "Maybe next time..."
      end
    end    

    def all_playdates
      @user.reload
    end

  def user_cancel
    puts "All done? Would you like to cancel your account? yes/no?"
    answer = STDIN.gets.chomp.downcase
    if answer == "yes"
      @user = @user.destroy
      sleep(1)
      puts "Alright, #{@user.username.capitalize}, your username has been deleted"
    else
      puts "Great, we'll see you next time!"
    end
  end

  #use instance methods to ability. Iterate through playdates for a user to tell the name of the dog and ID of the playdate
  #printing out ID for playdate and Dog