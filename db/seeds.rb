# THIS SEED FILE NEEDS TO BE ENTIRELY REPLACED -- I'M LEAVING CODE FOR YOUR REFERENCE ONLY!

Dog.destroy_all
User.destroy_all
Playdate.destroy_all
# Dog.reset_pk_sequence
# User.reset_pk_sequence
# Playdate.reset_pk_sequence

require 'faker'

Dog.destroy_all
User.destroy_all
Playdate.destroy_all

5.times do 
    Dog.create(name: Faker::Name.name, size: Faker::Creature::Dog.size)
    
    User.create(name: Faker::Name.name)

    Playdate.create(dog_id: Dog.all.sample.id, user_id: User.all.sample.id, date: Faker::Date.forward(days: 60))
end 


# ###################  Dogs  #####################
# cali = Dog.create(name: "Cali", size: "Large")
# mabel = Dog.create(name: "Mabel", size: "Large")
# rosie = Dog.create(name: "Rosie", size: "Small")
# cody = Dog.create(name: "Cody", size: "Large")
# riley = Dog.create(name: "Riley", size: "Medium")
# gucchi = Dog.create(name: "Gucchi", size: "Small")

# ####################  Users  #####################
# bill = User.create(name: "Bill", username: "BigBill", password: "1234")
# ted = User.create(name: "Ted", username: "TerribleTed", password: "password")
# pauly = User.create(name: "Pauly", username: "PassionatePauly", password: "pauly12")
# lloyd = User.create(name: "Lloyd", username: "LittleLloyd", password: "JDfLoSht")
# harry = User.create(name: "Harry", username: "HorribleHarry", password: "pw1234") 
# simon = User.create(name: "Simon", username: "SimpleSimon", password: "1234")

# ####################  Playdates #####################
# pd1 = Playdate.create(user_id, dog_id, date: "March 3rd, 2021")
# pd2 = Playdate.create(user_id, dog_id, date: "February 23rd, 2021")
# pd3 = Playdate.create(user_id, dog_id, date: "January 30th, 2021")
# pd4 = Playdate.create(user_id, dog_id, date: "April 3rd, 2021")
# pd5 = Playdate.create(user_id, dog_id, date: "March 14th, 2021")
# pd6 = Playdate.create(user_id, dog_id, date: "Apri 23rd, 2021")

########### different ways to write your seeds ############

# 1: save everything to variables (makes it easy to connect models, best for when you want to be intentional about your seeds)
# cali = Dog.create(name: "Cali", size: "Large")
# bill = User.create(name: "Bill", username: "BigBill", password: "1234")
# pp1 = Playdate.create(user_id, dog_id, date: "March 3rd")

# 2. Mass create -- in order to connect them later IN SEEDS (not through the app) you'll need to find their id
## a. by passing an array of hashes:
# Plant.create([
#     {name: "Corn Tree", bought: 20170203, color: "green"},
#     {name: "Prayer plant", bought: 20190815, color: "purple"},
#     {name: "Cactus", bought: 20200110, color: "ugly green"}
# ])
## b. by interating over an array of hashes:
# plants = [{name: "Elephant bush", bought: 20180908, color: "green"},
#     {name: "Photos", bought: 20170910, color: "green"},
#     {name: "Dragon tree", bought: 20170910, color: "green"},
#     {name: "Snake plant", bought: 20170910, color: "dark green"},
#     {name: "polka dot plant", bought: 20170915, color: "pink and green"},
#     {name: "Cactus", bought: 20200517, color: "green"}]

# plants.each{|hash| Plant.create(hash)}

# 3. Use Faker and mass create
## step 1: write a method that creates a person
# def create_person
#     free = ["mornings", "evenings", "always", "afternoons", "weekends", "none"].sample

#     person = Person.create(
#         name: Faker::Movies::HitchhikersGuideToTheGalaxy.character,
#         free_time: free,
#         age: rand(11...70)
#     )
# end

# ## step 2: write a method that creates a joiner
# def create_joiners(person)
#     plants_number = rand(1..4)
#     plants_number.times do 
#         PlantParenthood.create(
#             plant_id: Plant.all.sample.id, 
#             person_id: person.id, 
#             affection: rand(101), 
#             favorite?: [true, false].sample
#         )
#     end
# end

## step 3: invoke creating joiners by passing in an instance of a person
# 10.times do     
#     create_joiners(create_person)
#     ##### ALTERNATIVE:
#     # person = create_person
#     # create_joiners(person)
# end

# indoor = Category.create(name: "indoors")

# Plant.update(category_id: indoor.id)


puts "🔥 🔥 🔥 🔥 "