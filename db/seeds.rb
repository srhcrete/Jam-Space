User.destroy_all
Service.destroy_all
Band.destroy_all

20.times do
  User.create!(
          username: Faker::StarTrek.character,
          name: Faker::StarWars.character,
          age: Faker::Number.between(18, 70),
          location: Faker::Dune.planet,
          description: Faker::Dune.quote,
          email: Faker::Internet.email,
          password_digest: Faker::Internet.password(8),
          avatar: File.open(File.join(Rails.root, 'app', 'assets', 'images', 'avatar', "avatar#{rand(17)}.png"))
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
      photo: File.open(File.join(Rails.root, 'app', 'assets', 'images', 'band', "band#{rand(17)}.jpeg"))
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
      image: File.open(File.join(Rails.root, 'app', 'assets', 'images', 'service', "service#{rand(13)}.jpeg"))
        )
end

p "Created #{Band.count} products"
p "Created #{User.count} users"
p "Created #{Service.count} services"
