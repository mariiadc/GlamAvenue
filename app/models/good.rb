class Good < ApplicationRecord
  DESIGNER = [
"Balenciaga",
"Bottega Veneta",
"Burberry",
"Celine",
"Channel",
"Chloé",
"Cult Gaia",
"Dior",
"Dolce and Gabbana",
"Fendi",
"Givenchy",
"Gucci",
"Hermes",
"Jimmy Choo",
"Loewe",
"Louis Vuitoon",
"Prada",
"Tory Burch",
"Valentino",
"Saint Laurent"]
 CATEGORY = [
"Clutches",
"Crossbody Bags",
"Mini Bags",
"Shopper Bags",
"Shoulder Bags",
"Top Handle Bags",
"Tote Bags"
]
LOCATION = ["Lisbon", "Porto"]
  has_many_attached :photos
  belongs_to :user # posts in your item
  has_many :bookings
  # has_many :users, through :bookings
  # bookings someone's item
  # has_many :reviews, through :bookings
end
