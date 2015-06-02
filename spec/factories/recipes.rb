# == Schema Information
#
# Table name: recipes
#
#  id                 :integer          not null, primary key
#  photo_id           :string
#  title              :string
#  family_name        :string
#  prep_time          :string
#  cook_time          :string
#  number_of_servings :integer
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :recipe do
    photo_id "MyString"
title "MyString"
family_name "MyString"
prep_time "MyString"
cook_time "MyString"
number_of_servings 1
description "MyText"
  end

end
