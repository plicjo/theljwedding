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

require 'rails_helper'

RSpec.describe Guest, type: :model do

  it { should validate_length_of(:email)                   }
  it { should validate_presence_of(:email)                 }
  it { should validate_presence_of(:phone_number)          }
  it { should allow_value('admin@example.com').for(:email) }
  it { should_not allow_value('foo@bar').for(:email)       }
  
  it "#rsvp_status defaults to false" do
    expect(subject.rsvp_status).to eq false
  end


end
