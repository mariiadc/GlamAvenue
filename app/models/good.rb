class Good < ApplicationRecord
  belongs_to :user # posts in your item
  has_many :bookings
  # has_many :users, through :bookings
  # bookings someone's item
  # has_many :reviews, through :bookings
end
