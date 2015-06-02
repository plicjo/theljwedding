module ApplicationHelper

  def whitespace_stripper(value)
    value.nil? ? value : value.squish
  end

  def recipes
    Recipe.page(params[:page]).order(:title)
  end

  def food_options
    Rsvp::FOOD_OPTIONS
  end

end
