User.create!(name: "Kato",
             email: 'kato@email.com',
             password: 'password',
             password_confirmation: 'password',
             admin: true,
             activated: true,
             activated_at: Time.zone.now
)

99.times do |n|
  name = Faker::Name::name
  email = "example#{n + 1}@example.com"
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               activated: true,
               activated_at: Time.zone.now
  )
end
