# == Schema Information
#
# Table name: rsvps
#
#  id          :integer          not null, primary key
#  email       :string
#  first_name  :string
#  last_name   :string
#  attending   :boolean
#  food_option :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Rsvp < ActiveRecord::Base
  include ApplicationHelper
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  FOOD_OPTIONS = %w(Beef Fish Chicken None Veggies Kids)
  enum food_option: { 'Beef': 0, 'Fish': 1, 'Chicken': 2, 'None': 3, 'Veggies': 4, 'Kids': 5 }

  has_many :additional_guests, dependent: :destroy
  accepts_nested_attributes_for :additional_guests, allow_destroy: true

  validates :first_name, :last_name, presence: true
  validates :email, :food_option, presence: true
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :food_option, inclusion: { in: FOOD_OPTIONS }

  def email=(value)
    super whitespace_stripper(value)
  end

end
