class RsvpsController < ApplicationController
  layout 'guest', except: :index
  layout 'admin', only:   :index
  before_action :authenticate_user!, only: :index

  def new
    redirect_to root_path, notice: 'We regret to inform you that the deadline to RSVP has passed.'
  end

  def index
    @rsvps = Rsvp.order(:last_name)
  end

end
