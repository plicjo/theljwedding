require "rails_helper"

RSpec.describe RsvpMailer, type: :mailer do

  describe '#mass_email' do

    let(:rsvp) { FactoryGirl.create(:rsvp) }
    let(:rsvp_email) { FactoryGirl.create(:rsvp_email, subject: 'FooSubject', body: 'DatBody') }

    it 'should send a lot of emails' do
      RsvpMailer.mass_email(rsvp_email, rsvp).deliver_now
      last_email = ActionMailer::Base.deliveries.last
      expect(last_email.subject).to eq '[LJ Wedding] - FooSubject'
      expect(last_email.body).to include 'DatBody'
    end
  end
end
