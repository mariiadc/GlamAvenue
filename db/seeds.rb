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
good.photos.attach(io: file2, filename: 'nes1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'nes2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'nes3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'nes4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'nes5.jpg', content_type: 'image/jpg')
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

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900290/bags/birkin-1_sk0nek.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900290/bags/birkin-3_zhfhxv.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900290/bags/birkin-2_gxkspp.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900290/bags/birikin-5_ykusyy.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900290/bags/birkin-4_qxipds.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900290/bags/birkin-4_qxipds.jpg')

good = Good.create(name: "Birkin", description: "Everyone loves a classic, as it’s proven with the Birkin’s popularity. Crafted from o coral orange leather, this Hermès Birkin bag has the classic thin sangles with a frontal twist-lock fastening. You can’t go wrong with everlasting classics. Featuring a structured design, gold-tone hardware, purse feet, a hanging key fob, a padlock fastening detail, a twist lock fastening, a foldover top, round top handles, an internal zipped pocket, a leather lining and thin sangles. Please be mindful that this piece has led a previous life, and may tell its story through minor imperfection. Renting this item continues its narrative, so you can be confident that you’re making a POSITIVELY CONSCIOUS choice for the planet. This item comes with a dust bag.
Made in France",
  category: "Mini Bags", price: 30, designer: "Hermes", user_id: second.id, address: "Rua Lopes 98" )

good.photos.attach(io: file, filename: 'r1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'r2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'r3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'r4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'r5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'r6.jpg', content_type: 'image/jpg')
good.save!

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582798220/bags/c7_n4z2b1.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900290/bags/chanel1_vi43mv.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900290/bags/chanel1_vi43mv.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900291/bags/chanel5_uzvmnf.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900291/bags/chanel3_hwq475.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900291/bags/chanel4_xosbhq.jpg')

good = Good.create(name: "2.15 CC Logo", description: "They say a stitch in time saves nine, and this vintage Chanel shoulder bag saves you the hassle of ever having to buy another bag again. Diamond-quilted leather mixes with gold-tone hardware for a a perfectly Parisian finish. A true diamond in the rough. Featuring a foldover top with twist-lock closure, a press stud fastening, a diamond quilted finish, gold-tone hardware, a signature interlocking CC logo, stitching details, a front slip pocket and internal slip pockets. Please note that pre-owned items are not new and therefore might have minor imperfections. This item comes with original Chanel authenticity card.
Made in France",
  category: "Shoulder Bags", price: 70, designer: "Chanel", user_id: User.first.id, address:  "Rua da Madalena" )

good.photos.attach(io: file, filename: 'f1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'f2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'f3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'f4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'f5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'f6.jpg', content_type: 'image/jpg')
good.save!



file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900291/bags/ysl1_hhdzer.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900291/bags/ysl2_hkd5vo.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900291/bags/ysl3_oqstkt.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900291/bags/ysl3_oqstkt.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900291/bags/YSL_pmgjif.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900292/bags/YSL4_xalumd.jpg')

good = Good.create(name: "Collège", description: "If it fits your cards, phone, keys and lipstick, it’s the perfect size. Crafted from quilted black lambskin, this medium Collège shoulder bag from Saint Laurent is detailed with a signature interlocking YSL monogram plaque to the front to give it an extra sophisticated touch. Go for gold! Featuring a quilted effect, a rectangular body, a foldover top with magnetic closure, a gold-tone logo plaque, a flat top handle, a chain shoulder strap, a main internal compartment, an internal slip pocket, an internal zipped pocket and an internal logo stamp.
Made in Italy",
  category: "Shoulder Bags", price: 25, designer: "Saint Laurent", user_id: second.id, address:  second.address )

good.photos.attach(io: file, filename: 'p1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'p2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'p3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'p4jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'p5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'p6.jpg', content_type: 'image/jpg')
good.save!
puts "done"

puts "Doing camaradas"

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900378/bags/Image_from_iOS_3_efsvke.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900378/bags/Image_from_iOS_ys5xcu.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900378/bags/Image_from_iOS_4_zrw7oi.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900378/bags/Image_from_iOS_5_r0pczz.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900378/bags/Image_from_iOS_1_pkzf87.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900378/bags/Image_from_iOS_1_pkzf87.jpg')

good = Good.create(name: "Study Definition Backpack", description: "A comfortable and affordable backpack that lets you take the essentials (water, water bottle, jacket) with you. With a classic look that never goes out of style, durable construction, and details for all-day carrying comfort, this backpack is a must-have for the daily commute to school or occasional casual travel, and can add color to your journey.",
  category: "Backpack", price: 45, designer: "David Heinemeier Hansson", user_id: second.id, address:  "Rua da Sociedade farmacêutica" )

good.photos.attach(io: file, filename: 'r1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'r2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'r3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'r4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'r5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'r6.jpg', content_type: 'image/jpg')
good.save!
puts "done"

file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900377/bags/backpack1_o6rptk.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900377/bags/backpack1-4_d30f33.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900377/bags/backpack1-2_hwottp.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900377/bags/backpack1-3_qbjkff.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900377/bags/backpack1-1_btkni0.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900377/bags/backpack1-3_qbjkff.jpg')

good = Good.create(name: "Me Sarcastic Never Briefcase", description: "Have you got room for all that? With our durable briefcase, you will! This bag is made from leather and weights 1.3 lbs, just enough to be light, strong and long lasting. Grab it, stow it, throw it onto the seat next to you, this brifcase can take it, and so will you, wherever you go!",
  category: "Backpack", price: 2, designer: "David Heinemeier Hansson", user_id: User.first.id, address:  second.address )

good.photos.attach(io: file, filename: 'r1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'r2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'r3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'r4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'r5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'r6.jpg', content_type: 'image/jpg')
good.save!
puts "done"


file = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900376/bags/backback-a_zqtewr.jpg')
file2 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900376/bags/backback-d_e5xggw.jpg')
file3 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900376/bags/backback-d_e5xggw.jpg')
file4 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900376/bags/backback-e_skysak.jpg')
file5 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900376/bags/backback-c_w8mwfe.jpg')
file6 = URI.open('https://res.cloudinary.com/djx2n26vg/image/upload/v1582900376/bags/backback-b_lqmnqy.jpg')

good = Good.create(name: "Okay But First Coffee Backpack", description: "Have you got room for all that? With our roomy and durable backpack, you will! This bag is made from spun polyester and weights 1.3 lbs, just enough to be light, strong and long lasting. Grab it, stow it, throw it onto the seat next to you, this backpack can take it, and so will you, wherever you go!",
  category: "Backpack", price: 2, designer: "David Heinemeier Hansson", user_id: second.id, address: "Rua do Conde de Redondo 91" )

good.photos.attach(io: file, filename: 'r1.jpg', content_type: 'image/jpg')
good.photos.attach(io: file2, filename: 'r2.jpg', content_type: 'image/jpg')
good.photos.attach(io: file3, filename: 'r3.jpg', content_type: 'image/jpg')
good.photos.attach(io: file4, filename: 'r4.jpg', content_type: 'image/jpg')
good.photos.attach(io: file5, filename: 'r5.jpg', content_type: 'image/jpg')
good.photos.attach(io: file6, filename: 'r6.jpg', content_type: 'image/jpg')
good.save!
puts "done"
