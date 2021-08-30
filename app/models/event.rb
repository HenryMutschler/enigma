class Event < ApplicationRecord
    has_many :bookings
    has_many :favourites
    CATEGORIES = ["Vegetarian", "Mediterranean", "Turkish", "Tapas", "Vegan", "Italian", "French", "British", "German"]
    validates :postcode, presence: true
    validates :restaurant_name, presence: true
    validates :category, inclusion: { in: CATEGORIES }
    validates :event_name, presence: true
    validates :event_descritpion, presence: true
    validates :price, presence: true
end
