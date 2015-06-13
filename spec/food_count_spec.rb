require 'rails_helper'

describe FoodCount do

  describe '.beef_total' do
    before do
      5.times { FactoryGirl.create(:rsvp, food_option: 'Beef') }
      5.times { FactoryGirl.create(:additional_guest, food_option: 'Beef') }
    end

    it 'returns the number of Rsvps and AdditonalGuests that want the Beef food option' do
      expect(FoodCount.beef_total).to eq 10
    end
  end

  describe '.fish_total' do
    before do
      3.times { FactoryGirl.create(:rsvp, food_option: 'Fish') }
      2.times { FactoryGirl.create(:additional_guest, food_option: 'Fish') }
    end

    it 'returns the number of Rsvps and AdditonalGuests that want the Fish food option' do
      expect(FoodCount.fish_total).to eq 5
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

  describe '.veggies_total' do
    before do
      6.times { FactoryGirl.create(:rsvp, food_option: 'Veggies') }
      7.times { FactoryGirl.create(:additional_guest, food_option: 'Veggies') }
    end

    it 'returns the number of Rsvps and AdditonalGuests that want the Veggies food option' do
      expect(FoodCount.veggies_total).to eq 13
    end
  end
end
