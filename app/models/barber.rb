class Barber < ApplicationRecord
    has_many :appoints
    has_many :clients, through: :appoints
end
