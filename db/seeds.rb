User.create!(name: "Kato",
             email: 'kato@email.com',
             password: 'password',
             password_confirmation: 'password'
)

99.times do |n|
  name = Faker::Name::name
  email = "example#{n + 1}@example.com"
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password
  )
end
