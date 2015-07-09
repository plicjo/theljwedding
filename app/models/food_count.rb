class FoodCount

  def self.total(food_option)
    food_option = food_option.titleize
    Rsvp.send(food_option).count + AdditionalGuest.send(food_option).count
  end

end
