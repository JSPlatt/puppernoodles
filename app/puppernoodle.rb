class PupperNoodles
  # here will be your CLI!
  # it is not an AR class so you need to add attr
  attr_reader :user

  def run
    welcome
    login_or_signup
    change_user_name
    see_all_dogs
    choose_a_dog
    user_cancel
  end

  def welcome
    puts "Welcome to PupperNoodles!"
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
    puts "You're changing your username!" 
    puts "What would you like your new username to be? "
    new_user_name = STDIN.gets.chomp 
    @user.update(username: new_user_name)
  end
end

  def see_all_dogs
    puts "Let's take a look at those dogs..."
    sleep(2)
    puts ".................................."
    sleep(2)
    puts "..........MATCHING................"
    sleep(2)
    puts ".................................."
    sleep(3)
    Dog.all.each do |dog_ins|
      puts dog_ins.id_and_name()
    end
  end

  def choose_a_dog
    puts "Choose the number of the dog you'd like to play with!"
    answer = STDIN.gets.chomp
    @dog = Dog.all.find(answer).name
    sleep(1)
    puts "Your Playdate with #{@dog} is scheduled for January 30th, 2021 at 11:30am! Have fun!"
    sleep(2.5)
  end

  def user_cancel
    puts "All done? Would you like to cancel your account? yes/no?"
    answer = STDIN.gets.chomp.downcase
    if answer == "yes"
      @user = User.last.destroy
      sleep(1)
      puts "Alright, #{@user.username.capitalize}, your username has been deleted"
    else
      puts "Great, we'll see you next time!"
    end
  end


    

