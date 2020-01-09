class RsvpEmail < ApplicationRecord
  validates :subject, :body, presence: true
end
