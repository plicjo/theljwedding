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
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  FOOD_OPTIONS = %w(Steak Salmon Chicken)
  enum food_option: { 'Steak': 0, 'Salmon': 1, 'Chicken': 2 }

  validates :first_name, :last_name, :email, presence: true
  validates :attending,  :food_option, presence: true
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates :food_option, inclusion: { in: FOOD_OPTIONS }
  validates :email, inclusion: { in: Guest.pluck(:email),
    message: "Your email is not included in the guest list. Did you type it correctly?" }
end
