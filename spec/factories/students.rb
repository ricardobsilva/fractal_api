FactoryGirl.define do
  factory :student do
    name "MyString"
    birthdate "2017-05-05"
    email {Faker::Internet.email}
  end
end
