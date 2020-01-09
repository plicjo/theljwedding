FactoryBot.define do
  factory :recipe do
    title { "MyString" }
    family_name { "MyString" }
    prep_time { "MyString" }
    cook_time { "MyString" }
    number_of_servings { 1 }
    description { "MyText" }
  end
end
