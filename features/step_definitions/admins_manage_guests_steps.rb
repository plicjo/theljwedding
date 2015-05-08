Given(/^I am logged in$/) do
  @user = create :user
  visit '/admin'
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: 'password'
  click_button 'Log in'
  page.should have_content 'Signed in successfully.'
end

Given(/^a guest exists$/) do
  @guest = create :guest
end

When(/^I click "(.*?)"$/) do |text|
  click_link_or_button text
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

When(/^I fill out a valid new guest form$/) do
  fill_in 'guest_email', with: Faker::Internet.email
  fill_in 'guest_phone_number', with: '555002490'
  click_button 'Create Guest'
end

When(/^I fill out a valid edit guest form$/) do
  fill_in 'guest_email', with: Faker::Internet.email
  click_button 'Update Guest'
end
