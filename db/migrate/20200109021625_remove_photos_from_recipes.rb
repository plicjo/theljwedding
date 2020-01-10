class RemovePhotosFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :photo_id
  end
end
