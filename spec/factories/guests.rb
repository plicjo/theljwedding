FactoryGirl.define do
  factory :guest do
    email Faker::Internet.email
    phone_number "MyString"
    rsvp_status false
  end

end
