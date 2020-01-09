Given(/^I am on the homepage$/) do
  visit root_path
end

Given(/^I am on the new recipe page$/) do
  visit new_recipe_path
end

When(/^I fill out a valid recipe$/) do
  fill_in 'recipe_title', with: 'Darkhorse Pie'
  fill_in 'recipe_family_name', with: 'Olsen Family'

  click_link_or_button 'Add an ingredient'
  expect(page).to have_content 'Remove'

  find('.nested-fields .ingredients .string').set('2 Carrots')

  click_link_or_button 'Add a step'
  expect(page).to have_content 'Recipe Step'

  find('#recipe-steps textarea').set('Chop the Carrots. NAO!')

  fill_in 'recipe_prep_time', with: '10 minutes'
  fill_in 'recipe_cook_time', with: '30 minutes'
  fill_in 'recipe_number_of_servings', with: '6'
  fill_in 'recipe_description', with: 'Cut Up Carrots from the exotic land of Indonesia. What a great recipe for a new couple!'

  click_button 'Add recipe'
end

Then(/^I should see that the recipe has been created$/) do
  expect(page).to have_content 'Serves'
  expect(page).to have_content 'Recipe was successfully created.'
end

Then(/^I should see a list of recipes$/) do
  within 'aside' do
    expect(page).to have_content 'Darkhorse Pie'
  end
end
