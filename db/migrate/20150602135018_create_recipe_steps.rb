class CreateRecipeSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_steps do |t|
      t.string :step_description
      t.belongs_to :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
