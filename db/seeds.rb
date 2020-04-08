User.create!(
  name: "admin", 
  email: "admin@gmail.com",
  password:  ENV['ADMIN_PASSWORD'],
  password_confirmation: ENV['ADMIN_PASSWORD'], 
  user_type: "admin",
  confirmed_at: Time.zone.now
)
