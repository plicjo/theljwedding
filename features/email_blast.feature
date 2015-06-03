Feature: Email Blast
  Admins can send an email blast to all the RSVP'd guests

  Scenario: Admin send a mass email to all RSVP'd guests
    Given there are 300 rsvp guests
    Given I am logged in
    When I click "Send Email Blast"
    Then I should see "New Email Blast"
    When I fill out the email blast form
    Then I should see that the emails have been sent
