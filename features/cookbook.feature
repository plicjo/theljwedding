Feature: Cookbook
  Visitors can submit a recipe and view other submitted recipes

  @javascript
  Scenario: Visitor submits a recipe
    Given I am on the homepage
    When I click "Submit a Recipe"
    Then I should see "New Recipe"
    When I fill out a valid recipe
    Then I should see "Successfully created recipe."
