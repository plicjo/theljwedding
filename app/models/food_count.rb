class FoodCount

  def self.beef_total
    Rsvp.Beef.count + AdditionalGuest.Beef.count
  end

  def self.fish_total
    Rsvp.Fish.count + AdditionalGuest.Fish.count
  end

  def self.chicken_total
    Rsvp.Chicken.count + AdditionalGuest.Chicken.count
  end

  def self.veggies_total
    Rsvp.Veggies.count + AdditionalGuest.Veggies.count
  end

  def self.no_food_total
    Rsvp.None.count + AdditionalGuest.None.count
  end

end
