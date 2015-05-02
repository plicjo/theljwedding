Given(/^a wedding exists$/) do
  @wedding = create :wedding
end

Given(/^I am is signed in$/) do
  @user = FactoryGirl.create :user
  visit '/admin'
  fill_in 'user_email',    with: @user.email
  fill_in 'user_password', with: @user.password
  click_button 'Log in'
  page.should have_content 'Signed in successfully.'
end

When(/^I click "(.*?)"$/) do |text|
  click_link_or_button "#{text}"
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content "#{text}"
end

When(/^I update the wedding info$/) do
  fill_in 'autocomplete', with: '21 W Church St Jacksonville, FL'
  click_button 'Update Wedding'
end