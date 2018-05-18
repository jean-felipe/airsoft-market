# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'creating users'
User.create!([
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' },
  { email: Faker::Internet.email, name: Faker::OnePiece.character, nick: Faker::Pokemon.name, password: 'qweqwe123' }
  ])

  puts 'creating products'

  User.all.each do |user|
    Product.create!([
      { description: Faker::Lorem.sentence(3), name: Faker::OnePiece.akuma_no_mi, price: [1.99, 15.30, 5.0, 30.00].sample,
        category: Product::CATEGORIES.sample, user_id: user.id },
      { description: Faker::Lorem.sentence(3), name: Faker::OnePiece.akuma_no_mi, price: [1.99, 15.30, 5.0, 30.00].sample,
        category: Product::CATEGORIES.sample, user_id: user.id },
      { description: Faker::Lorem.sentence(3), name: Faker::OnePiece.akuma_no_mi, price: [1.99, 15.30, 5.0, 30.00].sample,
        category: Product::CATEGORIES.sample, user_id: user.id },
      { description: Faker::Lorem.sentence(3), name: Faker::OnePiece.akuma_no_mi, price: [1.99, 15.30, 5.0, 30.00].sample,
        category: Product::CATEGORIES.sample, user_id: user.id }
      ])
  end
