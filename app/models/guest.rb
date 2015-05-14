# == Schema Information
#
# Table name: guests
#
#  id          :integer          not null, primary key
#  email       :string
#  rsvp_status :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Guest < ActiveRecord::Base
  include ApplicationHelper
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }

  def self.rsvp_status_update(email)
    find_by_email(email).update(rsvp_status: true) 
  end

  def email=(value)
    super whitespace_stripper(value)
  end

end
