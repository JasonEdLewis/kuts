class Client < ApplicationRecord
    has_many :appoints
    has_many :barbers, through: :appoints
    has_secure_password
end
