company_size = ["50-99 staffs", "100-299 staffs", "300-499 staffs", "500-999 staffs", ">=1000 staffs"]

20.times do |n|
User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: "admin-#{n+1}@gmail.com",
  password:  ENV["ADMIN_PASSWORD"],
  password_confirmation: ENV["ADMIN_PASSWORD"],
  user_type: "admin",
  confirmed_at: Time.zone.now)
end

40.times do |n|
User.create!(first_name:  Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   email: "example-#{n+1}@gmail.com",
   user_type: rand(1..2),
   password: "password",
   password_confirmation: "password",
   confirmed_at: Time.zone.now)
end

20.times do |n|
Candidate.create!(
  user_id: 2*n +22,
  date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 100),
  phone: Faker::Base.numerify("+84 ###-###-###"),
  avatar: Faker::Avatar.image,
  cv: "https://robohash.org/#{ Faker::Name.first_name.delete(" ") }.pdf?size=300x300&set=set1")
end

20.times do |n|
Employer.create!(
  user_id: 2*n +21,
  company_logo: Faker::Company.logo,
  company_name: Faker::Company.name,
  company_size: company_size.sample,
  company_description: "company_description #{2*n +1}")
end
