class RsvpsController < ApplicationController
  layout 'guest'
  
  def new
    @rsvp = Rsvp.new
    respond_with(@rsvp)
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    Guest.rsvp_status_update(@rsvp.email) if @rsvp.save
    respond_with @rsvp, location: root_path
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:email, :first_name, :last_name, :attending, :food_option)
  end
end
