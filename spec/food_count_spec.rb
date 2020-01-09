require 'rails_helper'

describe FoodCount do

  describe '#total' do
    context 'Beef' do
      before do
        5.times { FactoryBot.create(:rsvp, food_option: 'Beef') }
        5.times { FactoryBot.create(:additional_guest, food_option: 'Beef') }
        1.times { FactoryBot.create(:rsvp, food_option: 'Beef', invite_status: false) }
      end

      it 'returns the number of Rsvps and AdditonalGuests that want the Beef food option' do
        expect(FoodCount.total('Beef')).to eq 10
      end
    end

    context 'Fish' do
      before do
        3.times { FactoryBot.create(:rsvp, food_option: 'Fish') }
        2.times { FactoryBot.create(:additional_guest, food_option: 'Fish', rsvp: Rsvp.last) }
      end

      it 'returns the number of Rsvps and AdditonalGuests that want the Fish food option' do
        expect(FoodCount.total('Fish')).to eq 5
      end
    end

    context 'Chicken' do
      before do
        1.times { FactoryBot.create(:rsvp, food_option: 'Chicken') }
        6.times { FactoryBot.create(:additional_guest, food_option: 'Chicken') }
      end

      it 'returns the number of Rsvps and AdditonalGuests that want the Chicken food option' do
        expect(FoodCount.total('Chicken')).to eq 7
      end
    end

    context 'Veggies' do
      before do
        6.times { FactoryBot.create(:rsvp, food_option: 'Veggies') }
        7.times { FactoryBot.create(:additional_guest, food_option: 'Veggies') }

        2.times { FactoryBot.create(:additional_guest, food_option: 'None') }
      end

      it 'returns the number of Rsvps and AdditonalGuests that want the Veggies food option' do
        expect(FoodCount.total('Veggies')).to eq 13
      end
    end

    context 'No Food' do
      before do
        9.times { FactoryBot.create(:rsvp, food_option: 'None') }
        8.times { FactoryBot.create(:additional_guest, food_option: 'None') }

        2.times { FactoryBot.create(:additional_guest, food_option: 'Veggies') }
      end

      it 'returns the number of Rsvps and AdditonalGuests that want the Veggies food option' do
        expect(FoodCount.total('None')).to eq 17
      end
    end

  context 'Kids Nuggets' do
      before do
        10.times { FactoryBot.create(:rsvp, food_option: 'Kids') }
        8.times { FactoryBot.create(:additional_guest, food_option: 'Kids') }
      end

      it 'returns the number of Rsvps and AdditonalGuests that want the Kids food option' do
        expect(FoodCount.total('Kids')).to eq 18
      end
    end

  end
end
