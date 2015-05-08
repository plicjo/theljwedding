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

FactoryGirl.define do
  factory :guest do
    email        Faker::Internet.email
    phone_number '(555) 543-3221'
    rsvp_status  false
  end
end
