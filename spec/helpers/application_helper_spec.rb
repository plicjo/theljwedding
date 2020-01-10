require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#mask_email' do
    let(:email) { 'bro@example.com' }
    it 'masks the persons email' do
      expect(helper.mask_email(email)).to eq('***@example.com')
    end
  end
end
