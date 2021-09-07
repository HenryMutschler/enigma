class Review < ApplicationRecord
  belongs_to :user # organizer's
  belongs_to :booking # from user

  validates :content, length: { minimum: 5 }
end
