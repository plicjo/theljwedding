# == Schema Information
#
# Table name: recipe_steps
#
#  id               :integer          not null, primary key
#  step_description :string
#  recipe_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :recipe_step do
    step_description "MyString"
recipe nil
  end

end
