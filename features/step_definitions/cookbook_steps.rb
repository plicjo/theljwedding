Given(/^I am on the homepage$/) do
  visit root_path
end

When(/^I fill out a valid recipe$/) do
  attach_file 'recipe_photo', 'spec/support/photo.jpg'
  fill_in 'recipe_title', with: 'Darkhorse Pie'
  fill_in 'recipe_family_name', with: 'Olsen Family'

  click_link_or_button 'Add Ingredient'
  expect(page).to have_content 'Remove Ingredient'

  within '#ingredients' do
    find('.recipe_ingredients_ingredient_description input').set('2 Carrots')
  end

   click_link_or_button 'Add Step'
   expect(page).to have_content 'Remove Step'

   within '#recipe_steps' do
     find('.recipe_recipe_steps_step_description input').set('Chop the Carrots. NAO!')
   end

  fill_in 'recipe_prep_time', with: '10 minutes'
  fill_in 'recipe_cook_time', with: '30 minutes'
  fill_in 'recipe_number_of_servings', with: '6'
  fill_in 'recipe_description', with: 'Cut Up Carrots from the exotic land of Indonesia. What a great recipe for a new couple!'

  click_button 'Submit Recipe'
end

Then(/^I should see that the recipe has been created$/) do
  VCR.use_cassette 'amazon_s3', allow_playback_repeats: true, record: :new_episodes do
    expect(page).to have_content 'Recipe was successfully created.'
    expect(page).to have_content 'Back to Wedding Site'
  end
end

Then(/^I should see a list of recipes$/) do
  within '#recipe-list' do
    expect(page).to have_content 'Darkhorse Pie'
  end
end
