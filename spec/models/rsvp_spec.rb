require 'rails_helper'

RSpec.describe Rsvp, type: :model do

  let(:rsvp) { build(:rsvp) }

  context 'validations' do
    it { should validate_presence_of(:first_name)            }
    it { should validate_presence_of(:last_name)             }
    it { should validate_presence_of(:food_option)           }
    it { should validate_presence_of(:email)                 }
    it { should validate_length_of(:email)                   }
    end

  context 'SET #email' do

    it 'safely saves if the value is set to nil' do
      expect { rsvp.update(email: nil) }.to_not raise_error
    end

    it 'strips whitespace' do
      rsvp.update(email: '  white@space.com   ')
      expect(rsvp.email).to eq 'white@space.com'
    end
  end

end
