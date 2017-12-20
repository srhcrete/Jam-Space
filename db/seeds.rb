User.destroy_all

20.times do
  User.create!(
          username: Faker::StarTrek.character,
          name: Faker::StarWars.character,
          age: Faker::Number.between(18, 70),
          location: Faker::Dune.planet,
          description: Faker::Dune.quote,
          email: Faker::Internet.email,
          password: Faker::Internet.password(8),
          avatar: Faker::Avatar.image("my-own-slug", "50x50")
        )
end

20.times do
  user = User.find(rand(User.first.id..User.last.id))
  Band.create!(
      name: Faker::RockBand.name,
      location: Faker::Dune.planet,
      description: Faker::Dune.saying,
      members: [Faker::Lorem.words(4)],
      user_id: user.id,
      photo: Faker::LoremPixel.image
        )
end

50.times do
  user = User.find(rand(User.first.id..User.last.id))
  Service.create!(
      name: Faker::WorldOfWarcraft.hero,
      description: Faker::Simpsons.quote,
      price: Faker::Number.decimal(2),
      available_from: Faker::Date.between(Date.today, 1.year.from_now),
      available_to: Faker::Date.between(Date.today, 1.year.from_now),
      longitude: Faker::Number.decimal(4),
      latitude: Faker::Number.decimal(4),
      user_id: user.id,
      image: Faker::LoremPixel.image
        )
end

p "Created #{Band.count} products"
p "Created #{User.count} users"
p "Created #{Service.count} services"
