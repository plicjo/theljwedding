Given(/^I visit the RSVP page$/) do
  visit rsvp_path
end

When(/^I fill in the RSVP information$/) do
  fill_in 'rsvp_email',      with: @guest.email
  fill_in 'rsvp_first_name', with: 'Example'
  fill_in 'rsvp_last_name',  with: 'Guest'
  choose 'Accepts your invite with pleasure'
  choose 'Steak'
end

When(/^I add an additional guest$/) do
  click_button 'Add additional guest'
  page.should have_content 'Additional Guest #1'
end

When(/^I fill in the additional guest's information$/) do
  fill_in 'additonal_guest_by_rsvp[0]_first_name', with: 'Example'
  fill_in 'additonal_guest_by_rsvp[0]_last_name',  with: 'Guest'
  select  'Accepts your invite with pleasure', from: 'additonal_guest_by_rsvp[0]_attending'
  select  'Salmon', from: 'additonal_guest_by_rsvp[0]_food_option'
end