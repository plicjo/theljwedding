Given(/^I am on the homepage$/) do
  visit root_path
end

When(/^I fill out a valid recipe$/) do
  attach_file 'recipe_photo', 'spec/support/photo.png'
  fill_in 'recipe_title', with: 'Darkhorse Pie'
  fill_in 'recipe_family_name', with: 'Olsen Family'
  click_button 'Add Ingredient'
  expect(page).to have_content 'Remove Ingredient'

  within '#ingredients' do
    find('.recipe_ingredients_description input').set('2 Carrots')
  end

  click_button 'Add Step'
  expect(page).to have_content 'Remove Step'

  within '#steps' do
    find('.recipe_steps_description input').set('Chop the Carrots. NAO!')
  end

  fill_in 'recipe_prep_time', with: '10 minutes'
  fill_in 'recipe_cook_time', with: '30 minutes'
  fill_in 'recipe_number_of_servings', with: '6'
  fill_in 'recipe_description', with: 'Cut Up Carrots from the exotic land of Indonesia. What a great recipe for a new couple!'

  click_button 'Submit Recipe'
end
