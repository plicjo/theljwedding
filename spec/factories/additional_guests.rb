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

FactoryGirl.define do
  factory :additional_guest do
    first_name "MyString"
    last_name "MyString"
    food_option 1
    invite_status true
  end

end
