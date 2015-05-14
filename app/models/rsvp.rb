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
  FOOD_OPTIONS = %w(Steak Salmon Chicken)
  enum food_option: { 'Steak': 0, 'Salmon': 1, 'Chicken': 2 }

  has_many :additional_guests, dependent: :destroy
  accepts_nested_attributes_for :additional_guests, allow_destroy: true

  validates :first_name, :last_name, presence: true
  validates :email, :food_option, presence: true
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :food_option, inclusion: { in: FOOD_OPTIONS }
  validates :email, inclusion: { in: proc { Guest.pluck(:email) },
    message: "Your email is not included in the guest list. Did you type it correctly?" }

  def email=(value)
    super whitespace_stripper(value)
  end

end
