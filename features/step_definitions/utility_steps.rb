Given(/^I am logged in$/) do
  @user = create :user
  visit '/admin'
  fill_in 'user_email',    with: @user.email
  fill_in 'user_password', with: 'password'
  click_button 'Log in'
  expect(page).to have_content 'Signed in successfully.'
end

When(/^I click "(.*?)"$/) do |text|
  click_link_or_button text
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end
