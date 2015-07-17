class FoodCount

  def self.total(food_option)
    food_option = food_option.titleize
    Rsvp.where(invite_status: true).send(food_option).count + AdditionalGuest.where(invite_status: true).send(food_option).count
  end

end
