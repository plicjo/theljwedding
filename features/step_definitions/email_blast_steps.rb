Given(/^there are (\d+) rsvp guests$/) do |arg1|
  300.times { FactoryBot.create(:rsvp) } # 300 email recipients
end

When(/^I fill out the email blast form$/) do
  fill_in 'rsvp_email_subject', with: 'Darkhorse Foobar'
  fill_in 'rsvp_email_body', with: 'Darkhorse Foobar'
  click_button 'Send Email Blast'
end

Then(/^I should see that the emails have been sent$/) do
  expect(ActionMailer::Base.deliveries.count).to eq 300
  expect(page).to have_content 'Your email blast has been sent!'
end
