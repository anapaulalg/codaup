FactoryGirl.define do
  factory :registration do

    status "pending"
    price "9.99"
    guest_count 2

    user            { build(:user) }
    event           { build(:event) }
  end
end
