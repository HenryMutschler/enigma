class Event < ApplicationRecord
  has_many :bookings
  has_many :favourites

  geocoded_by :postcode, params: { countrycodes: 'gb' }
  after_validation :geocode, if: :will_save_change_to_postcode?

  enum category: { american: 0,
                   bar: 1,
                   bbq: 2,
                   british: 3,
                   chinese: 4,
                   cooktails_bar: 5,
                   modern_european: 6,
                   french: 7,
                   german: 8,
                   hongkongese: 9,
                   indoniesan: 10,
                   italian: 11,
                   japanese: 12,
                   korean: 13,
                   mediterranean: 14,
                   nightout: 15,
                   pizza: 16,
                   pub: 17,
                   singaporean: 18,
                   something_different: 19,
                   tapas: 20,
                   thai: 21,
                   turkish: 22,
                   vegan: 23,
                   vegetarian: 24 }

  validates :postcode, presence: true
  validates :restaurant_name, presence: true
  validates :event_name, presence: true
  validates :event_descritpion, presence: true
  validates :price, presence: true
end
