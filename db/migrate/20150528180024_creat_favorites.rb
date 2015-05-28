class CreatFavorites < ActiveRecord::Migration
  create_table(:favorites) do |t|
    t.integer :item_id
  end
end
