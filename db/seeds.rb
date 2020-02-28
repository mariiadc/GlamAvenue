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

User.create!(first_name: "John", last_name: "Smith", email: "franbilio@gmail.com", password: "123456", address: "Rua Garrett 73", phone_number: "965677545")
second = User.create!(first_name: "Michaela", last_name: "O'nill", email: "facsr92@gmail.com", password: "123456", address: "Rua Tomás da Anunciação 26", phone_number: "988887655")

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798220/bags/c2_zxbxhv.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798220/bags/c5_njuhyg.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798221/bags/c6_sgipyv.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798220/bags/c3_wejrby.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798220/bags/c4_mw7ajh.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798220/bags/c1_n9igjy.jpg')

good = Good.create(name: "Chanel 10", description: "Leather: Lambskin. Gentle wear should be expected and reinforces the history of this heritage piece 3 interior pockets Dust bag included Leather lining Weight: 12oz / 0.34kg Made in France",
  category: "Shoulder Bags", price: 50, designer: "Chanel", user_id: User.first.id, address: User.first.address )

good.photos.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'nes.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'nes.jpg', content_type: 'image/jpg')
good.save!

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/bv3_xjtuvb.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/bv5_zhsvgv.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/bv4_ihjpld.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/bv1_whhewq.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/bv2_qlklj8.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/bv2_qlklj8.jpg')

good = Good.create(name: "The Pouch", description: "One of the first designs by Creative Director Daniel Lee, The Pouch is an oversized clutch made with delicate folds of smooth buttery soft calf leather that envelope the bag’s frame and create a voluminous rounded shape. New for Spring/Summer 2019, The Pouch reflects Bottega Veneta’s heritage of leather craftsmanship with a modern sensibility.",
  category: "Clutches", price: 56, designer: "Bottega Veneta", user_id: second.id, address: second.address )

good.photos.attach(io: file, filename: 'bv1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'bv2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'bv3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'bv4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'bv5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'bv6.jpg', content_type: 'image/jpg')
good.save!

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798221/bags/lv5_d2uiui.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798221/bags/lv2_x4h69o.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798221/bags/lv_vzgvix.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798221/bags/lv_vzgvix.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798221/bags/lv1_v6v1ie.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798221/bags/lv4_u2hymw.jpg')

good = Good.create(name: "NEVERFULL GM", description: "The Neverfull GM tote unites timeless design with heritage details. Made from supple Monogram canvas with natural cowhide trim, it is ultra-roomy but never bulky, with side laces that cinch for a sleek allure or loosen for a more casual look. Slim, comfortable handles slip easily over the shoulder or arm. Lined in colourful textile, it features a removable pouch that can serve as a clutch or an extra pocket.",
  category: "Shoulder Bags", price: 68, designer: "Louis Vuitton", user_id: User.first.id, address: User.first.address )

good.photos.attach(io: file, filename: 'lv5.jpg', content_type: 'image1/jpg')
good.photos.attach(io: file2, filename: 'lv2.jpg', content_type: 'image2/jpg')
good.photos.attach(io: file3, filename: 'lv.jpg', content_type: 'image3/jpg')
good.photos.attach(io: file4, filename: 'lv3.jpg', content_type: 'image4/jpg')
good.photos.attach(io: file5, filename: 'lv1.jpg', content_type: 'image5/jpg')
good.photos.attach(io: file6, filename: 'lv4.jpg', content_type: 'image6/jpg')
good.save!

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/br1_rh7xed.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798220/bags/br5_j6c03r.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798220/bags/br3_gzrdw7.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/br4_ecsahy.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/br2_nrbpfr.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798219/bags/br2_nrbpfr.jpg')

good = Good.create(name: "Vintage check travel pouch", description: "Travel pouch by Burberry in cotton blend with Vintage check motif featuring silicone patch with raised Burberry lettering at front, magnetic press-stud and zip closure, leather handle and interior with one zip pocket and two slit pockets. Spring/Summer 2020 collection.",
  category: "Crossbody Bags", price: 45, designer: "Burberry", user_id: second.id, address:  second.address )

good.photos.attach(io: file, filename: 'br1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'br2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'br3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'br4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'br5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'br6.jpg', content_type: 'image/jpg')
good.save!
puts "done"
