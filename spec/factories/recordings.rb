FactoryBot.define do
  factory :recording do
    temp { Faker::Number.number(digits: 2) }
    status { Faker::Name.name }
  end
end
