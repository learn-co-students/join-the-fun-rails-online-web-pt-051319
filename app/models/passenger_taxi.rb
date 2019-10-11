class PassengerTaxi < ActiveRecord::Basebelongs_to :passenger
    
    belongs_to :passenger
    belongs_to :taxi

end