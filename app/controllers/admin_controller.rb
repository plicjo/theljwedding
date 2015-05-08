class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'

  def dashboard
  end

end
