class StaticPagesController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!

  def dashboard
  end

end
