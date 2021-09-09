class Review < ApplicationRecord
  belongs_to :user # organizer's
  belongs_to :booking # from user

  validates :content, length: { minimum: 5 }

  scope :by_recently_created, -> { order(created_at: :desc) }
end
