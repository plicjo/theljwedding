Given(/^a guest exists$/) do
  @guest = create :guest
end

When(/^I fill out a valid new guest form$/) do
  fill_in 'guest_email',        with: Faker::Internet.email
  click_button 'Create Guest'
end

When(/^I fill out a valid edit guest form$/) do
  fill_in 'guest_email', with: Faker::Internet.email
  click_button 'Update Guest'
end
