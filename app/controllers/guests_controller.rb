class GuestsController < ApplicationController
  layout 'admin'
  before_action :set_guest, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @guests = Guest.all
    respond_with(@guests)
  end

  def new
    @guest = Guest.new
    respond_with(@guest)
  end

  def edit
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.save
    respond_with @guest, location: guests_path
  end

  def update
    @guest.update(guest_params)
    respond_with(@guest, location: guests_path)
  end

  def destroy
    @guest.destroy
    respond_with(@guest)
  end

  private
    def set_guest
      @guest = Guest.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:email, :phone_number)
    end
end
