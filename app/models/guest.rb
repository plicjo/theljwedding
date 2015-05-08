# == Schema Information
#
# Table name: guests
#
#  id           :integer          not null, primary key
#  email        :string
#  phone_number :string
#  rsvp_status  :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Guest < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :phone_number, presence: true
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
end
