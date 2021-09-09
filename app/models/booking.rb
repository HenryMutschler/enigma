class Booking < ApplicationRecord
  belongs_to :user # user
  belongs_to :event # from organizer
  has_one :review

  validates :ticket_amount, presence: true
end
