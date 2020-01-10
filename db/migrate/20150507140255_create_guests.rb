class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.string :email,        unique: true
      t.string :phone_number
      t.boolean :rsvp_status, default: false

      t.timestamps null: false
    end
  end
end
