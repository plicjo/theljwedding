class ConvertNumServingsToStringField < ActiveRecord::Migration
  def change
    change_column :recipes, :number_of_servings, :string
  end
end
