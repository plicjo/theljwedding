class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :recipe_steps
  accepts_nested_attributes_for :ingredients, allow_destroy: true
  accepts_nested_attributes_for :recipe_steps, allow_destroy: true

  validates :title, :family_name, presence: true
  validates :prep_time, :cook_time, presence: true
  validates :description, presence: true
end
