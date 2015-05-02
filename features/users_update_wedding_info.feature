Feature: Wedding Information
  Users can update the date time and location of the wedding

  Scenario: User edits a weddings information
    Given a wedding exists
    And   I am is signed in
    Then  I should see "LJ Admin"
    When  I click "Edit Wedding Info"
    Then  I should see "Change Wedding Info"
    When  I update the wedding info
    Then  I should see "Wedding was successfully updated."
