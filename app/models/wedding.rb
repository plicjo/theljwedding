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

class Wedding < ActiveRecord::Base
  validates :location, presence: true
  validates :time,     presence: true
end
