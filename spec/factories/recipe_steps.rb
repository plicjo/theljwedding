FactoryBot.define do
  factory :recipe_step do
    step_description { "MyString" }
    recipe { nil }
  end
end
