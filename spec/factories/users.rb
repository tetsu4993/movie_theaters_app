FactoryBot.define do
  factory :user do
    nickname               {Faker::Name.initials(number: 2)}
    birthday               {Faker::Date.birthday(min_age: 18, max_age: 65)}
    email                  {Faker::Internet.email}
    password               {Faker::Internet.password(min_length: 6) + "1a"}
    password_confirmation  {password}
  end
end