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

FactoryGirl.define do
  factory :guest do
    email        Faker::Internet.email
  end
end
