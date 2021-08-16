# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t4traw = User.create(
  name: "t4traw",
  email: "t4traw@gmail.com",
  password: "password",
  profile: "アングラーのタックルボックスなど、釣具や装備写真を共有するサービス https://finz.me を運営しています🎣",
  agreement: true,
)
t4traw.activate!

rand(1..3).times do
  tackle = t4traw.tackles.create(
    description: Faker::Games::Dota.quote,
    photo: open("#{Rails.root}/db/seed_data/images/500/#{"#{Random.rand(1..24)}.jpg"}"),
  )
  rand(1..3).times do
    tackle.tag_list.add(Faker::Games::Dota.hero)
  end
  tackle.save
end

10.times do
  user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    profile: Faker::Lorem.sentence,
    agreement: true,
  )
  user.activate!

  rand(1..3).times do
    tackle = user.tackles.create(
      description: Faker::Games::Dota.quote,
      photo: open("#{Rails.root}/db/seed_data/images/500/#{"#{Random.rand(1..24)}.jpg"}"),
    )
    rand(1..3).times do
      tackle.tag_list.add(Faker::Games::Dota.hero)
    end
    tackle.save
  end
end
