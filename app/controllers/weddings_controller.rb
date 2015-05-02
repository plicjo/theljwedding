class WeddingsController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :get_wedding
  
  def edit
  end

  def update
    @wedding.update(wedding_params)
    respond_with @wedding, location: edit_wedding_path(@wedding)
  end

  private

  def wedding_params
    params.require(:wedding).permit(:time, :location)
  end

  def get_wedding
    @wedding = Wedding.find(params[:id])
  end

end