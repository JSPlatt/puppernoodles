class PupperNoodles
  # here will be your CLI!
  # it is not an AR class so you need to add attr
  attr_reader :user

  def run

  def welcome
    puts "Weclome to PupperNoodles!"
    sleep(1)
    puts "Time to get your playdate started...."
  end

  # private

  def login_or_signup
    puts "Please enter your username to login or sign up"
    answer = gets.chomp.downcase
    @user = User.find_or_create_by(username: answer)
    sleep(1)
    puts "Alright, #{@user.username.capitalize}!"
  end
end
end
