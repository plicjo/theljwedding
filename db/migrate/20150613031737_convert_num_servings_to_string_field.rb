class ConvertNumServingsToStringField < ActiveRecord::Migration[6.0]
  def change
    change_column :recipes, :number_of_servings, :string
  end
end
