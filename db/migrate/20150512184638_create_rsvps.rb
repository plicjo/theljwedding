class CreateRsvps < ActiveRecord::Migration[6.0]
  def change
    create_table :rsvps do |t|
      t.string :email,          unique: true
      t.string :first_name
      t.string :last_name
      t.boolean :attending
      t.integer :food_option

      t.timestamps null: false
    end
  end
end
