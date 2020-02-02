class SvelteController < ApplicationController
  layout 'svelte_application'
  before_action :authenticate_user!

  def index; end
end
