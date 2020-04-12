User.create!(
  name: "admin", 
  email: "admin@gmail.com",
  password:  ENV['ADMIN_PASSWORD'],
  password_confirmation: ENV['ADMIN_PASSWORD'], 
  user_type: "admin",
  confirmed_at: Time.zone.now
)
20.times do |n|
name  = Faker::Name.name
email = "candidate-#{n+1}@gmail.com"
password = "password"
User.create!(name:  name,
   email: email,
   user_type: "candidate",
   password:              password,
   password_confirmation: password,
   confirmed_at: Time.zone.now)
end
20.times do |n|
  name  = Faker::Name.name
  email = "employer-#{n+1}@gmail.com"
  password = "password"
  User.create!(name:  name,
     email: email,
     user_type: "employer",
     password:              password,
     password_confirmation: password,
     confirmed_at: Time.zone.now)
  end