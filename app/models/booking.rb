class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  
  validates :ticket_amount, presence: true

end
