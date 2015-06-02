require 'rails_helper'

describe FoodCount do

  describe '.steak_total' do
    before do
      5.times { FactoryGirl.create(:rsvp, food_option: 'Steak') }
      5.times { FactoryGirl.create(:additional_guest, food_option: 'Steak') }
    end

    it 'returns the number of Rsvps and AdditonalGuests that want the Steak food option' do
      expect(FoodCount.steak_total).to eq 10
    end
  end

  describe '.salmon_total' do
    before do
      3.times { FactoryGirl.create(:rsvp, food_option: 'Salmon') }
      2.times { FactoryGirl.create(:additional_guest, food_option: 'Salmon') }
    end

    it 'returns the number of Rsvps and AdditonalGuests that want the Salmon food option' do
      expect(FoodCount.salmon_total).to eq 5
    end
  end

  describe '.chicken_total' do
    before do
      1.times { FactoryGirl.create(:rsvp, food_option: 'Chicken') }
      6.times { FactoryGirl.create(:additional_guest, food_option: 'Chicken') }
    end

    it 'returns the number of Rsvps and AdditonalGuests that want the Chicken food option' do
      expect(FoodCount.chicken_total).to eq 7
    end

  end
end
