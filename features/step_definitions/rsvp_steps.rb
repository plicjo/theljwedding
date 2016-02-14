Given(/^I visit the RSVP page$/) do
  visit rsvp_path
end

Given(/^an rsvp exists$/) do
  @rsvp = FactoryGirl.create(:rsvp)
end

Then(/^I should get redirected to the home page$/) do
  expect(page).to have_content 'Jordan and Lauren met at a Catholic college retreat in September of 2009.'
end

Then(/^I should see the food option counts$/) do
  expect(page).to have_content 'Food Option Totals'
  expect(page).to have_content 1 # the count for one of the rsvp options will be 1
  expect(page).to have_content 0 # the count for the other options is zero
end

Then(/^I should see info the for RSVP$/) do
  expect(page).to have_content @rsvp.email
end
