class Barber < ApplicationRecord
    has_many :appoints
    has_many :clients, through: :appoints


    def number_of_hours_remaining
        hours_left = 7 - @apoint.barber.hours
        return hours_left.valid?
    end
    
end
