Feature: Cookbook
  Visitors can submit a recipe and view other submitted recipes

  @javascript
  Scenario: Visitor submits a recipe
    Given I am on the new recipe page
    And   I fill out a valid recipe
    Then  I should see that the recipe has been created
    And   I should see a list of recipes
