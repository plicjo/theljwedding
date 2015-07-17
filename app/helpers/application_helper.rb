module ApplicationHelper

  def whitespace_stripper(value)
    value.nil? ? value : value.squish
  end

  def recipes
    Recipe.page(params[:page]).order(:title)
  end

  def food_options
    [
      ['Chicken Florentine En Croute', 'Chicken'],
      ['Roasted Prime Rib of Beef',    'Beef'],
      ['Mahi-Mahi with a Fresh Mango Salsa', 'Fish'],
      ['Roasted Vegetables in Puff Pastry', 'Veggies'],
      ['Kids Chicken Nuggets, Fries, and Fruit Cup', 'Kids'],
      ["No food please. I'd just like to RSVP.", 'None']
    ]
  end

end
