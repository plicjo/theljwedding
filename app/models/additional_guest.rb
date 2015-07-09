# == Schema Information
#
# Table name: additional_guests
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  food_option :integer
#  rsvp_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AdditionalGuest < ActiveRecord::Base
  belongs_to :rsvp, dependent: :destroy

  enum food_option: { 'Beef': 0, 'Fish': 1, 'Chicken': 2, 'None': 3, 'Veggies': 4 }

  validates :first_name, :last_name, presence: true
  validates :food_option, presence: true
  validates :food_option, inclusion: { in: Rsvp::FOOD_OPTIONS }
end
