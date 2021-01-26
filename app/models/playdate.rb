class Playdate < ActiveRecord::Base
    belongs_to :dog
    belongs_to :user

    
#need date/time helper methods(today/future/find/get etc.)


      def self.make_a_playdate(dog_name, user_name)
        #crete a method to make a playdate
    end

      
      def self.view_playdate
      #create a method to view all playdates associated to a user? Or all in general?
      end
      
      def self.cancel_playdate
      #destroy method.  Create a way to cancel a specific playdate 
      end
      
      def self.update_playdate
      #create a method to change the date of the playdate and return a new date and confirmation message; if/else resulting in an error message if new introduced date is in the wrong format.
      end
    end

  


  
