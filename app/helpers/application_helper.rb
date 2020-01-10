module ApplicationHelper
  def mask_email(email)
    email.sub(/^.*(?=@)/, '***')
  end

  def whitespace_stripper(value)
    value.nil? ? value : value.squish
  end

  def recipes
    Recipe.page(params[:page]).order(:title)
  end

  def attending_rsvps
    @rsvps.where(invite_status: true)
  end

  def not_coming_rsvps
    @rsvps.where(invite_status: false)
  end

  def attending_additional_guests
    AdditionalGuest.where(invite_status: true).order(:last_name)
  end

  def not_attending_additional_guests
    AdditionalGuest.where(invite_status: false).order(:last_name)
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
