Given(/^I visit the RSVP page$/) do
  visit rsvp_path
end

When(/^I fill in the RSVP information$/) do
  within '#new_rsvp' do
    fill_in 'rsvp_email',      with: 'admin@example.com'
    fill_in 'rsvp_first_name', with: 'Example'
    fill_in 'rsvp_last_name',  with: 'Guest'
    choose 'Accepts your invite with pleasure'
    choose 'Roasted Prime Rib of Beef'
  end
end

When(/^I add an additional guest$/) do
  click_link 'Add Additional Guest to Your Party'
  expect(page).to have_content 'Remove additional guest'
end

When(/^I fill in the additional guest's information$/) do
  within '#additional-guests' do
    find('.rsvp_additional_guests_first_name input').set('Example')
    find('.rsvp_additional_guests_last_name input').set('Guest')
    choose 'Declines with regret'
    choose 'Mahi-Mahi with a Fresh Mango Salsa'
  end
end

Given(/^an rsvp exists$/) do
  @rsvp = FactoryBot.create(:rsvp)
end

Then(/^I should see the food option counts$/) do
  expect(page).to have_content 'Food Option Totals'
  expect(page).to have_content 1 # the count for one of the rsvp options will be 1
  expect(page).to have_content 0 # the count for the other options is zero
end

Then(/^I should see info the for RSVP$/) do
  expect(page).to have_content @rsvp.email
end
