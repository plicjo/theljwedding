Feature: Guests
  Admins can create, edit, and delete guests.

  Scenario: Admin creates a guest
    Given I am logged in
    When  I click "Guest Status"
    Then  I should see "Guest List"
    When  I click "New Guest"
    Then  I should see "New guest"
    When  I fill out a valid new guest form
    Then  I should see "Guest was successfully created."

  Scenario: Admin edits a guest
    Given a guest exists
    And   I am logged in
    When  I click "Guest Status"
    Then  I should see "Guest List"
    When  I click "Edit"
    Then  I should see "Editing guest"
    When  I fill out a valid edit guest form
    Then  I should see "Guest was successfully updated."

  Scenario: Admin deletes a guest
    Given a guest exists
    And   I am logged in
    When  I click "Guest Status"
    Then  I should see "Guest List"
    When  I click "Delete"
    Then  I should see "Guest was successfully destroyed."
