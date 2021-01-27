class Dog < ActiveRecord::Base
    has_many :playdates
    has_many :users, through: :playdates


    def self.id(dog_name)
        Dog.find_by(name: dog_name).id
    end 

    def id_and_name
        "#{self.id}) #{self.name}!!!"
    end
end
