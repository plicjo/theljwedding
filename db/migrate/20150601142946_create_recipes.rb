class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :photo_id
      t.string :title
      t.string :family_name
      t.string :prep_time
      t.string :cook_time
      t.integer :number_of_servings
      t.text :description

      t.timestamps null: false
    end
  end
end
