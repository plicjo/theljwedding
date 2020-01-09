FactoryBot.define do
  factory :additional_guest do
    first_name { "MyString" }
    last_name { "MyString" }
    food_option { 1 }
    invite_status { true }
  end
end
