namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(email: "example@railstutorial.jp",
                 password: "foobarfoobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.jp"
      password  = "password"
      User.create!(email: email,
                   password: password)
    end

    users = User.all(limit: 6)
    50.times do
      inquiry = Faker::Lorem.sentence(5)
      users.each { |user| user.inquiries.create!(inquiry: inquiry) }
    end
  end
end