class Appoint < ApplicationRecord
  belongs_to :client
  belongs_to :barber
  validates :time, presence: true, uniqueness: true
end
