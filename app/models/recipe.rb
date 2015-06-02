class Recipe < ActiveRecord::Base
  attachment :photo, type: :image
  has_many :ingredients
  has_many :recipe_steps
  accepts_nested_attributes_for :ingredients, allow_destroy: true
  accepts_nested_attributes_for :recipe_steps, allow_destroy: true

  validates :title, :family_name, presence: true
  validates :prep_time, :cook_time, presence: true
  validates :description, presence: true
  validates :number_of_servings, numericality: { only_integer: true }
  validates_presence_of :photo, message: 'needs a photo.'

end
