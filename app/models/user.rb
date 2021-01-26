class User < ActiveRecord::Base
    has_many :playdates
    has_many :dogs, through: :playdates
    
    
    def self.find_user(name)
        User.find_by(name: name)
    end

    def self.id(name)
        User.find_by(name: name).id
    end

    def self.playdates(name)
        User.find_user(name).playdates
    end

    def self.num_of_playdates(name)
        User.find_user(name).playdates.length
    end

end

