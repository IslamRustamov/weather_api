require 'faker'

(1..50).each do
  l = Location.create(name: Faker::Name.name)
  (1..10).each do
    l.recordings.create(temp: Faker::Number.number(digits: 2), status: Faker::Name.name)
  end
end
