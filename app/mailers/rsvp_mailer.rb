class RsvpMailer < ApplicationMailer
  def mass_email(rsvp_email, guest)
    @rsvp_email = rsvp_email
    mail({ to: guest.email, from: 'olsenfeliberti@gmail.com', subject: "[LJ Wedding] - #{@rsvp_email.subject}" })
  end

end

