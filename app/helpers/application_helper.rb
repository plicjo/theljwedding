module ApplicationHelper

  def whitespace_stripper(value)
    value.nil? ? value : value.squish
  end

  def recipes
    Recipe.page(params[:page]).order(:title)
  end

  def food_options
    food_options = Rsvp::FOOD_OPTIONS
    [
      ['Chicken Florentine En Croute', food_options[2]],
      ['Roasted Prime Rib of Beef',    food_options[0]],
      ['Mahi-Mahi with a Fresh Mango Salsa or Lemon Herb Sauce', food_options[1]],
      ['Roasted Vegetables in Puff Pastry', food_options[4]],
      ["No food please. I'd just like to RSVP.", food_options[3]]
    ]

  end

end
