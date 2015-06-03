class RsvpEmail < ActiveRecord::Base
  validates :subject, :body, presence: true
end
