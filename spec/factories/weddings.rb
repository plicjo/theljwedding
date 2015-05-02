# == Schema Information
#
# Table name: weddings
#
#  id         :integer          not null, primary key
#  location   :string
#  time       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :wedding do
    location "MyString"
    time "2015-05-01 21:23:48"
  end

end
