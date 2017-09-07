=begin
FactoryGirl.define do
  factory :profile do
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    bio         { Faker::Lorem.sentence }
  end
end
=end


FactoryGirl.define do
  factory :profile do
    first_name "MyString"
    last_name "MyString"
    bio "MyText"
    user nil
  end
end
