Feature: RSVP
  Guests can RSVP for themselves and their party

  Scenario: Visitor tries to RSVP for the wedding
    Given I visit the RSVP page
    Then  I should get redirected to the home page
    And   I should see "We regret to inform you that the deadline to RSVP has passed."

  Scenario: Admin views list of RSVPs and the food option count
    Given I am logged in
    Given an rsvp exists
    When I click "RSVP List"
    Then I should see "RSVP Management"
    And I should see the food option counts
    And I should see info the for RSVP

