class RsvpEmailsController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!, only: :index

  def new
    @rsvp_email = RsvpEmail.new
  end

  def create
    @rsvp_email = RsvpEmail.new(email_params)
    if @rsvp_email.save
      Rsvp.all.each { |rsvp| RsvpMailer.mass_email(@rsvp_email, rsvp).deliver_now }
      redirect_to dashboard_path, notice: 'Your email blast has been sent!'
    else
      render :new
    end
  end

  private

  def email_params
    params.require(:rsvp_email).permit(:body, :subject)
  end

end
