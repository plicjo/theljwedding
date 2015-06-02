class FoodCount

  def self.steak_total
    Rsvp.Steak.count + AdditionalGuest.Steak.count
  end

  def self.salmon_total
    Rsvp.Salmon.count + AdditionalGuest.Salmon.count
  end

  def self.chicken_total
    Rsvp.Chicken.count + AdditionalGuest.Chicken.count
  end

end
