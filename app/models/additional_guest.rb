class AdditionalGuest < ActiveRecord::Base
  belongs_to :rsvp, dependent: :destroy

  enum food_option: { 'Beef': 0, 'Fish': 1, 'Chicken': 2, 'None': 3, 'Veggies': 4, 'Kids':5 }

  validates :first_name, :last_name, presence: true
  validates :food_option, presence: true
  validates :food_option, inclusion: { in: Rsvp::FOOD_OPTIONS }
  validates :invite_status, inclusion: { in: [true, false] , message: "Please tell us if you're coming" }
end
