# == Schema Information
#
# Table name: ingredients
#
#  id                     :integer          not null, primary key
#  ingredient_description :string
#  recipe_id              :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Ingredient < ActiveRecord::Base
  belongs_to :recipe
end
