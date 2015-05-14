class AdditionalGuest < ActiveRecord::Base
  belongs_to :rsvp
  
  enum food_option: { 'Steak': 0, 'Salmon': 1, 'Chicken': 2 }
  validates :first_name, :last_name, presence: true
  validates :food_option, presence: true
  validates :food_option, inclusion: { in: Rsvp::FOOD_OPTIONS }
end
