User.create!(
  name: "admin", 
  email: "admin@gmail.com",
  password:  ENV['ADMIN_PASSWORD'],
  password_confirmation: ENV['ADMIN_PASSWORD'], 
  user_type: "admin",
  confirmed_at: Time.zone.now
)
User.create!(
  name: "a", 
  email: "a@gmail.com",
  password:  "123456",
  password_confirmation: "123456", 
  user_type: "candidate",
  confirmed_at: Time.zone.now
)
User.create!(
  name: "b", 
  email: "b@gmail.com",
  password:  "123456",
  password_confirmation: "123456", 
  user_type: "employer",
  confirmed_at: Time.zone.now
)
