Feature: RSVP
  Guests can RSVP for themselves and their party

  Scenario: Guest RSVPs for the wedding
    Given a guest exists
    Given I visit the RSVP page
    When  I fill in the RSVP information
    # And   I add an additional guest
    # And   I fill in the additional guest's information
    And   I click "RSVP"
    Then  I should see "We've received your RSVP. Thank you!"

# If it's an RSVP update, 
# delete the old one with dependent guests, 
# THEN create the new one
