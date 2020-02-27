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
"Louis Vuitton",
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
"Handle Bags",
"Tote Bags"
]

  has_many_attached :photos
  belongs_to :user # posts in your item
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # has_many :users, through :bookings
  # bookings someone's item
  # has_many :reviews, through :bookings
end
