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

require 'rails_helper'

RSpec.describe Rsvp, type: :model do
  let(:guest) { create(:guest) }
  let(:rsvp)  { create(:rsvp)  }

  context 'validations' do
    it { should validate_presence_of(:first_name)            }
    it { should validate_presence_of(:last_name)             }
    it { should validate_presence_of(:food_option)           }
    it { should validate_presence_of(:attending)             }
    it { should validate_presence_of(:email)                 }
    it { should validate_length_of(:email)                   }
    it { 
         should validate_inclusion_of(:email)
         .in_array(Guest.pluck(:email).to_a)
         .with_message("Your email is not included in the guest list. Did you type it correctly?")
    }
  end

end
