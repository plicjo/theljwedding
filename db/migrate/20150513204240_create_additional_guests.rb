class CreateAdditionalGuests < ActiveRecord::Migration
  def change
    create_table :additional_guests do |t|
      t.string :first_name
      t.string :last_name
      t.integer :food_option
      t.references :rsvp, index: true

      t.timestamps null: false
    end
  end
end
