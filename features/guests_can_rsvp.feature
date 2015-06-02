Feature: RSVP
  Guests can RSVP for themselves and their party

  @javascript
  Scenario: Visitor RSVPs for the wedding
    Given I visit the RSVP page
    When  I fill in the RSVP information
    And   I add an additional guest
    And   I fill in the additional guest's information
    And   I click "RSVP"
    Then  I should see "We've received your RSVP. Thank you! Why not check out our family cookbook or submit a recipe?"

