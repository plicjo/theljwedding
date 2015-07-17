class RsvpsController < ApplicationController
  layout 'guest', except: :index
  layout 'admin', only:   :index
  before_action :authenticate_user!, only: :index

  def new
    @rsvp = Rsvp.new
    respond_with(@rsvp)
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    flash[:notice] = "We've received your RSVP. Thank you! Why not check out our #{new_recipe_link('family cookbook')} or #{new_recipe_link('submit a recipe')}?" if @rsvp.save
    respond_with @rsvp, location: root_path
  end

  def index
    @rsvps = Rsvp.page(params[:page]).order(:last_name)
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(
      :email, :first_name, :last_name, :food_option, :invite_status,
      additional_guests_attributes: [
        :first_name, :id, :destroy, :invite_status,
        :food_option, :last_name, :rsvp_id
      ]
    )
  end

  def new_recipe_link link_text
    view_context.link_to "#{link_text}", new_recipe_path
  end
end
