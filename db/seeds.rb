# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying all"

Booking.destroy_all
Good.destroy_all
User.destroy_all


puts "Creating seed"

User.create!(first_name: "john", last_name: "smith", email: "franbilio@gmail.com", password: "123456", address: "sdasda", phone_number: "sdad")
second = User.create!(first_name: "Michel", last_name: "smith", email: "facsr92@gmail.com", password: "123456", address: "sdsd", phone_number: "sdad")

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726595/YbipQ1gB29usHmhQGrFQGF7A.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726596/FQw871NEi7XGMccgvrBDufvX.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726598/LoxuDhRSk4KLynbfYhLCMsRK.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726601/ABtP24sntPbmkaic7oQ4zzcu.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726602/kk1UWfL5YPvS2A8XbYf4tw53.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726603/zFMxybtwQEizCzAde46iAMat.jpg')

good = Good.create(name: "Chanel 10", description: "Leather: Lambskin. Gentle wear should be expected and reinforces the history of this heritage piece 3 interior pockets Dust bag included Leather lining Weight: 12oz / 0.34kg Made in France",
  category: "Shoulder Bags", price: 25, designer: "Chanel", user_id: User.first.id, location: "Lisbon" )
good.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'nes.jpg', content_type: 'image/jpg')
good.save!

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726135/1Cz1fZ3BXaBL7nGiQeWrMQfF.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726136/AT7MALUuXzYiNm59M5wMSA8i.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726138/UL5qNA5BWZVcx1At9ahenmjy.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726140/KPtbYAqJKqx3zZ4XqLV7jk5E.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582726142/M52PmLC92vd43UhgpvucWiso.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582725438/9v7SVwxHftscjdByy6hrVYco.jpg')

good = Good.create(name: "The Pouch", description: "One of the first designs by Creative Director Daniel Lee, The Pouch is an oversized clutch made with delicate folds of smooth buttery soft calf leather that envelope the bag’s frame and create a voluminous rounded shape. New for Spring/Summer 2019, The Pouch reflects Bottega Veneta’s heritage of leather craftsmanship with a modern sensibility.",
  category: "Clutches", price: 15, designer: "Bottega Veneta", user_id: second.id, location: "Lisbon" )
good.photos.attach(io: file, filename: 'bv1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'bv2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'bv3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'bv4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'bv5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'bv6.jpg', content_type: 'image/jpg')
good.save!


file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582727035/vuzLmJkvJda8r1hYkcxN3Twn.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582727037/SebHHYzGqGYKjfKLRA6pA8rG.jpg')
file3= URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582727040/fifyPQGNBz2iwJrT3be5kdrz.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582727041/zoY2NArNVcG3sDCfeou2BE6E.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582727033/8Aq5SRgGiSo1ZmUG6cJSzkHC.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582727037/SebHHYzGqGYKjfKLRA6pA8rG.jpg')

good = Good.create(name: "NEVERFULL GM", description: "The Neverfull GM tote unites timeless design with heritage details. Made from supple Monogram canvas with natural cowhide trim, it is ultra-roomy but never bulky, with side laces that cinch for a sleek allure or loosen for a more casual look. Slim, comfortable handles slip easily over the shoulder or arm. Lined in colourful textile, it features a removable pouch that can serve as a clutch or an extra pocket.",
  category: "Shoulder Bags", price: 30, designer: "Louis Vuitoon", user_id: User.first.id, location: "Lisbon" )

good.photos.attach(io: file, filename: 'lv1.jpg', content_type: 'image1/jpg')
good.photos.attach(io: file2, filename: 'lv2.jpg', content_type: 'image2/jpg')
good.photos.attach(io: file3, filename: 'lv3.jpg', content_type: 'image3/jpg')
good.photos.attach(io: file4, filename: 'lv4.jpg', content_type: 'image4/jpg')
good.photos.attach(io: file5, filename: 'lv5.jpg', content_type: 'image5/jpg')
good.photos.attach(io: file6, filename: 'lv6.jpg', content_type: 'image6/jpg')
good.save!


puts "done"

