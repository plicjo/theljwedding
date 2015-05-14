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

require 'rails_helper'

RSpec.describe Guest, type: :model do
  let!(:guest) { create :guest }
  let(:rsvp)   { build  :rsvp  }

  it { should validate_length_of(:email)                   }
  it { should validate_presence_of(:email)                 }
  it { should allow_value('admin@example.com').for(:email) }
  it { should_not allow_value('foo@bar').for(:email)       }
  
  it "#rsvp_status defaults to false" do
    expect(subject.rsvp_status).to eq false
  end

  context '.rsvp_status_update' do
    it 'updates the #rsvp_status of a guest with the same email to true' do
      rsvp.update(email: guest.email)
      expect(Guest.rsvp_status_update(rsvp.email)).to eq true
    end
  end

  context 'SET #email' do
    it 'safely saves if the value is set to nil' do
      expect { guest.update(email: nil) }.to_not raise_error
    end

    it 'strips whitespace' do
      guest.update(email: '  white@space.com   ')
      expect(guest.email).to eq 'white@space.com'
    end
  end
end
