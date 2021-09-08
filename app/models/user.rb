class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings,   dependent: :destroy
  has_many :reviews,    dependent: :destroy # for organizer
  has_many :favourites, dependent: :destroy
  has_many :events,     dependent: :destroy # for organizer

  attribute :organizer, :boolean, default: false

  validates :first_name, presence: true
  validates :last_name,  presence: true
end
