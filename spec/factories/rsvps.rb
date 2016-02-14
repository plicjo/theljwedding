FactoryGirl.define do
  factory :rsvp do
    email "admin@example.com"
    first_name "MyString"
    last_name "MyString"
    attending true
    invite_status true
    food_option 1
  end

end
