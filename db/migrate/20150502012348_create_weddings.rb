class CreateWeddings < ActiveRecord::Migration[6.0]
  def change
    create_table :weddings do |t|
      t.string :location
      t.datetime :time

      t.timestamps null: false
    end
  end
end
