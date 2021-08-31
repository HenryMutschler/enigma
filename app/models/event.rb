class Event < ApplicationRecord
  has_many :bookings
  has_many :favourites
  CATEGORIES = ["American", "Bar", "BBQ", "British", "Chinese", "Cooktails Bar", "Modern European", "French", "German", "Hong Kong style", "Indoniesan", "Italian", "Japanese", "Korean", "Mediterranean", "Night Out", "Pizza", "Pub", "Singaporean", "Something different", "Tapas", "Thai", "Turkish", "Vegan", "Vegetarian"]

  validates :postcode, presence: true
  validates :restaurant_name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :event_name, presence: true
  validates :event_descritpion, presence: true
  validates :price, presence: true
end
