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

class RecipeStep < ActiveRecord::Base
  belongs_to :recipe
end
