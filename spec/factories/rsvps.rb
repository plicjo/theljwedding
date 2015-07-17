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

FactoryGirl.define do
  factory :rsvp do
    email "admin@example.com"
    first_name "MyString"
    last_name "MyString"
    attending true
    invite_status true
    food_option 1
  end

end
